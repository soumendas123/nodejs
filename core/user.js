const pool = require('./pool');
const bcrypt = require('bcrypt');


function User() {};

User.prototype = {
    // Find the user data by id or username.
    find : function(user = null, callback)
    {
        // if the user variable is defind
        if(user) {
            // if user = number return field = id, if user = string return field = username.
            var field = Number.isInteger(user) ? 'admin_id' : 'admin_user_name';
        }
        // prepare the sql query
        let sql = `SELECT * FROM microsidd_admin_login WHERE ${field} = ?`;


        pool.query(sql, user, function(err, result) {
            if(err) throw err

            if(result.length) {
               //console.log("abc", result[0]);
                callback(result[0]);
            }else {
                callback(null);
            }
        });
    },

    // This function will insert data into the database. (create a new user)
    // body is an object 
    create : function(body, callback) 
    {

        var pwd = body.password;
        // Hash the password before insert it into the database.
        body.password = bcrypt.hashSync(pwd,10);
           console.log("admin password", body.password )
        // this array will contain the values of the fields.
        var bind = [];
        // loop in the attributes of the object and push the values into the bind array.
        for(prop in body){
            bind.push(body[prop]);
        }
        // prepare the sql query
        let sql = `INSERT INTO microsidd_admin_login(admin_user_name, fullname, admin_password) VALUES (?, ?, ?)`;
        // call the query give it the sql string and the values (bind array)
        pool.query(sql, bind, function(err, result) {
            if(err) throw err;
            // return the last inserted id. if there is no error
            callback(result.insertId);
        });
    },
    
    signup : function(body, callback) 
    {
        console.log("user body", body );
        var pwd = body.password;
        let pwdString = pwd.toString();
        console.log("user pwd", pwd );
        // Hash the password before insert it into the database.
        body.password = bcrypt.hashSync(pwdString,10);
           console.log("user password", body.password );
        // this array will contain the values of the fields.
        var bind = [];
        // loop in the attributes of the object and push the values into the bind array.
        for(prop in body){
            bind.push(body[prop]);
        }
        console.log("user password", bind );
        // prepare the sql query
        let sql = `INSERT INTO microsidd_user(fname, lname, username, phoneno, password) VALUES (?, ?, ?, ?, ?)`;
        // call the query give it the sql string and the values (bind array)
        pool.query(sql, bind, function(err, result) {
            if(err) throw err;
            // return the last inserted id. if there is no error
            console.log("user result", result );
            callback(result.insertId);
        });
    },
    login : function(username, password, callback)
    {
        // find the user data by his username.
        this.find(username, function(user) {
            // if there is a user by this username.
            if(user) {
                // now we check his password.
                if(bcrypt.compareSync(password, user.admin_password)) {
                    //if(password==user.admin_password) {
                    // return his data.
                    callback(user);
                    return;
                }  
            }
            // if the username/password is wrong then return null.
            callback(null);
        });
        
    }

}
module.exports = User;