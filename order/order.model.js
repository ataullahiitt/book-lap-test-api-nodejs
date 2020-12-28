const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        orderId:{
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        userId: { type: DataTypes.INTEGER, allowNull: false },
        total: { type: DataTypes.DECIMAL, allowNull: false },
        dateAdded: {type: DataTypes.DATE, defaultValue: new Date()}
    };
    return sequelize.define('OrderItem', attributes, {
        tableName: 'OrderItem'
    });
}