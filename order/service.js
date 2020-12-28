const config = require('config.json');
const jwt    = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db     = require('dbConfig/db');

module.exports = { saveOrder };

// add item to user cart
async function saveOrder(user, body) {
    
    const orderData = {
        userId: user.id,
        total:calItem(body.labTest)
    };  
        // Insert data into order table
        const addToOrder = await db.Order.create(orderData);
        // Prepare data for bulk insert
        const insertItem = [];
        body.labTest.forEach( element => {
            const labtestItem = {
                orderId: addToOrder.orderId,
                labTestId: element.id,
                labTestName: element.itemName,
                itemId:element.itemId,
                quantity:element.Cart.quantity,
                price:element.minPrice,
                total: +element.Cart.quantity * +element.minPrice  
            }
            insertItem.push(labtestItem);
        });
        const OrderItem = await db.OrderLabTest.bulkCreate(insertItem);
    
        return {orderId:addToOrder.orderId, total:addToOrder.total, addedAt:addToOrder.dateAdded};
}
function calItem(cartItem) {
   
    return cartItem.reduce((prev, cur) => (prev + (cur.Cart.quantity * cur.minPrice)), 0)
}

