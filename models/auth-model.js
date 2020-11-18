
const pool = require('../core/pool');
const bcrypt = require('bcrypt');
var db = require('../db');
let model = {
    signup: (input, cb) => {

        let data = {
            username: input.username,
            password: input.password,
            phoneno: input.phoneno,
            fname: input.fname,
            lname: input.lname
           
        };
        
        return db.query("INSERT INTO microsidd_user SET ?", [data], cb)
    },
  
    findOne: (username, cb) => {
        return db.query("SELECT * FROM microsidd_user WHERE username=?", [username], cb);
    },
    findById: (id, cb) => {
        //console.log("abc",id);
        return db.query("SELECT * FROM microsidd_user WHERE user_id=? AND  status='Active'", [id], cb);
    }
}

module.exports = model;
