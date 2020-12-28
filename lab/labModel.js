const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        SN: { type: DataTypes.INTEGER },
        itemId: { type: DataTypes.STRING },
        itemName: { type: DataTypes.STRING },
        type:{type: DataTypes.STRING },
        bestSellers: { type: DataTypes.STRING },
        testCount: { type: DataTypes.INTEGER },
        includedTests: { type: DataTypes.STRING },
        url: { type: DataTypes.STRING },
        minPrice: { type: DataTypes.DECIMAL },
        labName: { type: DataTypes.STRING },
        fasting: { type: DataTypes.STRING },
        availableAt: { type: DataTypes.INTEGER },
        popular: { type: DataTypes.STRING },
        category: { type: DataTypes.STRING },
        objectID: { type: DataTypes.INTEGER },
    };  
    return sequelize.define('LabTest', attributes, {
        tableName: 'LabTest'
    });
}



   
