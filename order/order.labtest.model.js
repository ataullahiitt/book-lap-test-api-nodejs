const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        orderProductId:{
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        orderId: { type: DataTypes.INTEGER, allowNull: false },
        labTestId: { type: DataTypes.DECIMAL, allowNull: false },
        labTestName:{ type: DataTypes.STRING, allowNull: false },
        itemId:{ type: DataTypes.STRING, allowNull: false },
        quantity:{ type: DataTypes.INTEGER, allowNull: false },
        price:{ type: DataTypes.DECIMAL, allowNull: false },
        total:{ type: DataTypes.DECIMAL, allowNull: false },
    };
    return sequelize.define('OrderLabTest', attributes, {
        tableName: 'OrderLabTest'
    });
}