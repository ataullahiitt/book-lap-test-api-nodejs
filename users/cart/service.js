const config = require('config.json');
const jwt    = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db     = require('dbConfig/db');

module.exports = {view, add, remove };

// Get cart item by user 
async function view(user) {
    
    db.LabTest.hasOne(db.Cart);
    db.Cart.belongsTo(db.LabTest);

   const cart = await db.LabTest.findAll({
        include: {
          model: db.Cart,
          where: {userId:user.id},
          attributes:['cartId', 'quantity']
        },
        attributes:['id', 'itemName', 'minPrice', 'url', 'itemId']
      });

        if (!cart.length) throw 'No item added to cart';
        return {status:1, data:cart};
}
// add item to user cart
async function add(user, body) {
    
    // if item added to cart just update quantity
    const cartItem = await db.Cart.findOne({ where: { userId: user.id , labTestId:body.labTestId} });
    if(cartItem) {
        const updatedQty = body.quantity + cartItem.quantity;
        const updateCart = await db.Cart.update({ quantity: updatedQty }, {
                            where: {
                                userId: user.id,
                                labTestId:body.labTestId
                            }
          });    
        if(!updateCart)
            throw 'Something went wrong';
        return {message:'Added to cart !'}    
   }
    const cartData = { ...body , userId:user.id};
    const addCart = await db.Cart.create(cartData);
    if(!addCart)
        throw 'Something went wrong';
            return {message:'Added to cart !'} 
}
// remove cart item by user
async function remove(user,cartId =null ) {

    if(cartId){
        const remove = await db.Cart.destroy({
            where: {
                userId: user.id,
                cartId: cartId
            }
          });   
    }else {
        const remove = await db.Cart.destroy({
            where: {userId: user.id}
          });
    }
     if(!remove)
        throw 'Something went wrong';
            return {'status':1,message:'Cart item deleted!'}
}
