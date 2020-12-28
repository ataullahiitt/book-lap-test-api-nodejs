const express           = require('express');
const router            = express.Router();
const Joi               = require('joi');
const validateRequest   = require('_middleware/validate-request');
const authorize         = require('_middleware/authorize')
const orderService       = require('./service');

// Set all  routes here 
router.post('/save', authorize(), saveOrder);

module.exports = router;

function saveOrder(req, res, next) {
   
    orderService.saveOrder(req.user, req.body)
    .then(cart => res.json(cart))
    .catch(next);
}
