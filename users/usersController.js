const express           = require('express');
const router            = express.Router();
const Joi               = require('joi');
const validateRequest   = require('_middleware/validate-request');
const authorize         = require('_middleware/authorize')
const userService       = require('./user.service');

// Set all  routes here 
router.post('/authenticate', authenticateSchema, authenticate);
router.get('/current', authorize(), getCurrent);


module.exports = router;
// Validate all input field on login page 
function authenticateSchema(req, res, next) {
    const schema = Joi.object({
        username: Joi.string().required(),
        password: Joi.string().required()
    });
    validateRequest(req, next, schema);
}
// After validating validate user
function authenticate(req, res, next) {
    userService.authenticate(req.body)
        .then(user => res.json(user))
        .catch(next);
}

function getCurrent(req, res, next) {
    res.json(req.user);
}