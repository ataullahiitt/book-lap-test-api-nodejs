const jwt           = require('express-jwt');
const { secret }    = require('config.json');
const db            = require('dbConfig/db');

module.exports = authorize;

function authorize() {
    return [
        // JWT token decoded token 
        jwt({ secret, algorithms: ['HS256'] }),

        // attach full user record to request object
        async (req, res, next) => {
            // get user with id from token 
            const user = await db.User.findByPk(req.user.userId);

            // check user still exists
            if (!user)
                return res.status(401).json({ message: 'Unauthorized' });

            // authorization successful
            req.user = user.get();
            next();
        }
    ];
}