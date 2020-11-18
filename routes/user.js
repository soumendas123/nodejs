var express = require('express');
var router = express.Router();
//var passport = require('passport');

router.get('/', function(req, res, next) {
   // console.log("jwtPayload user",req.user);
    //res.json({name: 'Watch'});
    res.send(req.user);
    //res.json(req);
});
  
module.exports = router;