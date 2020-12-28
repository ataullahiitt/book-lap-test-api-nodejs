const config = require('config.json');
const jwt    = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db     = require('dbConfig/db');

module.exports = { authenticate };

/* Check user credentials, if success return user data with jwt token */
async function authenticate({ username, password }) {
    const user = await db.User.scope('withHash').findOne({ where: { username } });

    if (!user || !(await bcrypt.compare(password, user.hash)))
        throw 'Username or password is incorrect';

    // login  success 
    const token = jwt.sign({ userId: user.id }, config.secret, { expiresIn: '7d' });
    return { ...omitHash(user.get()), token };
}

 // Omitting hash from user data object 
function omitHash(user) {
    const { hash, ...userWithoutHash } = user;
    return userWithoutHash;
}