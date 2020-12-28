const config = require('config.json');
const jwt    = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db     = require('dbConfig/db');

module.exports = { getAllLabTest };

async function getAllLabTest() {
    
    const LabTest = await db.LabTest.findAll();

    return LabTest;
    
}
