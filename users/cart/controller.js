const express           = require('express');
const router            = express.Router();
const Joi               = require('joi');
const validateRequest   = require('_middleware/validate-request');
const authorize         = require('_middleware/authorize')
const cartService       = require('./service');

// Set all  routes here 
router.get('/view',authorize(), view);
router.post('/add', authorize(), addToCart);
router.delete('/remove/:id?', authorize(), remove);

module.exports = router;

function view(req, res, next) {

    cartService.view(req.user)
    .then(cart => res.json(cart))
    .catch(next);
}
function addToCart(req, res, next) {
   
    cartService.add(req.user, req.body)
    .then(cart => res.json(cart))
    .catch(next);
}

function remove(req, res, next){
    
    cartService.remove(req.user, req.params.id)
    .then(cart => res.json(cart))
    .catch(next);
}
