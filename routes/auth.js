var express = require('express');
var router = express.Router();
var authModel = require('../models/auth-model');
var bcrypt = require('bcrypt');
var passport = require('passport');
var jwt = require('jsonwebtoken');

//var bodyParser = require('body-parser');

//router.use(bodyParser.json());

router.post('/signup', function(req, res) {
    console.log("reg user eter",req.body);
    console.log("reg user eter password",req.body.password);
    const password = req.body.password;
    const saltRounds = 10;
    //let pwdString = password.toString();
  //  console.log("reg user eter after before hash",bcrypt.hashSync(password,10));
    bcrypt.hash(password, saltRounds, function(err, hash) {
        req.body.password = hash;
        console.log("reg user eter after hash",hash);
        authModel.signup(req.body, function(err, result) {
            res.json({ data: result, error: err })
        });
    });
});

router.post('/login', function(req, res, next) {
    console.log("login",req.body);
    passport.authenticate('local', {session: false}, function(err, user, info) {
        
        if (err) { return next(err); }

        if ( ! user) {
            return res.status(500).json(info.message)
        }

        const payload = {
            username: user.username,
            email: user.email
        }
        const options = {
            subject: `${user.user_id}`,
            expiresIn: 3600
        }
        const token = jwt.sign(payload, 'secret123', options);
        
        res.json({token});

    })(req, res, next);
})

module.exports = router;	
