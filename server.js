require('rootpath')();
const express       = require('express');
const app           = express();
const cors          = require('cors');
const bodyParser    = require('body-parser');
const errorHandler  = require('_middleware/error-handler');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

// api routes
app.use('/users', require('./users/usersController'));
app.use('/users/cart', require('./users/cart/controller'));
app.use('/lab', require('./lab/labController'));
app.use('/order', require('./order/controller'));

// global error handler
app.use(errorHandler);

// start server
const port = process.env.NODE_ENV === 'production' ? (process.env.PORT || 80) : 3000;
app.listen(port, () => console.log('Server listening on port ' + port));