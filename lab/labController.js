const express           = require('express');
const router            = express.Router();
const Joi               = require('joi');
const validateRequest   = require('_middleware/validate-request');
const authorize         = require('_middleware/authorize')
const LabService        = require('./labService');

// Set all  routes here 
router.get('/lab-test-list', authorize(),  getAllTestList);

module.exports = router;


function getAllTestList(req, res, next) {
    LabService.getAllLabTest()
              .then(data=> res.json(data))
              .catch(next)
}


