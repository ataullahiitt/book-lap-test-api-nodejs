const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        cartId:{
            type: DataTypes.INTEGER,
            primaryKey: true
        },
        userId: { type: DataTypes.INTEGER, allowNull: false },
        labTestId: { type: DataTypes.INTEGER, allowNull: false },
        quantity: { type: DataTypes.INTEGER, allowNull: false }
    };
    return sequelize.define('Cart', attributes);
}