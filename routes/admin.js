var express = require('express');
var router = express.Router();
var db = require('../db');

const User = require('../core/user');
const user = new User();
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { userType: 'Admin' });
});
router.get('/admin', function(req, res, next) {
  res.render('index', { userType: 'Admin' });
});
router.get('/admin/register', function(req, res, next) {
  res.render('register-admin', { userType: 'Admin' });
});

// Post register data
router.post('/register/submit', (req, res, next) => {
  // prepare an object containing all user inputs.
  let userInput = {
      username: req.body.username,
      fullname: req.body.fullname,
      password: req.body.password
  };
  // call create function. to create a new user. if there is no error this function will return it's id.
  user.create(userInput, function(lastId) {
      // if the creation of the user goes well we should get an integer (id of the inserted user)
      if(lastId) {
          // Get the user data by it's id. and store it in a session.
          user.find(lastId, function(result) {
              req.session.user = result;
              req.session.login = 0;
              res.redirect('/admin');
          });

      }else {
          console.log('Error creating a new user ...');
      }
  });

});
// Post login data
router.post('/login/submit', (req, res, next) => {
  // The data sent from the user are stored in the req.body object.
  // call our login function and it will return the result(the user data).
  user.login(req.body.admin_user_name, req.body.admin_password, function(result) {
      if(result) {
          // Store the user data in a session.
          req.session.user = result;
          req.session.login = 1;
          console.log("req.session.user", req.session.user);
          // redirect the user to the home page.
         res.redirect('/admin/user-listing');
      }else {
          // if the login function returns null send this error message back to the user.
          res.send('Username/Password incorrect!');
      }
  })

});







router.get('/admin/user-listing', function(req, res, next) {
let user = req.session.user;
console.log("user session login ", req.session.login);
console.log("user session list ", user);
if(req.session.login==1) {
  var query = 'select * from microsidd_user';
  db.query(query, function(err, rows, fields) {
    if (err) throw err;
    
    /*If you are creating api then get response in json format*/
    //res.json(rows);

    /*If you want response as json then comment below line*/
    res.render('user_listing', { title: 'Users List', users: rows});
    return;
  })
}else
{res.redirect('/admin');}

});

router.get('/admin/add-user', function(req, res, next) {
  res.render('add_user', { userType: 'Admin' });
});

router.post('/admin/create-user', function(req, res, next) {
 
  //res.send('Hello World! From User Add Page')
 //console.log(req.body);
  const author = req.body;//{"fname":"tapas","lname":"samonto","username":"tapas123"};
  
  db.query('INSERT INTO microsidd_user SET ?', author, (err, result) => {
    if(err) throw err;
    //res.json(req.body);
    console.log('Last insert ID:', result.insertId);
    res.redirect('/admin/user-listing');
  });
 
});

router.get('/admin/edit-user/:id', function(req, res, next) {
  //res.send('Hello World! From User Add Page');
  var id = req.params.id;
  var sql = `SELECT * FROM microsidd_user WHERE user_id=${id}`;
  db.query(sql, function(err, rows, fields) {
    if(err) throw err;
    console.log(rows[0]);
      res.render('edit_user', {title: 'Edit User', user: rows[0]});
    
    });
 
});

 router.post('/admin/edit/:id', function(req, res, next) {
  var id = req.params.id;
  const author = req.body;
  //console.log({{id}});
  
  var sql = `UPDATE microsidd_user SET ? WHERE user_id=${id}`;
  //var sql = `UPDATE products SET product_name="${product_name}", sku="${sku}", price="${price}" WHERE id=${id}`;
  db.query(sql, author, (err, result) => {
  //db.query(sql, function(err, result) {
    if (err) throw err;
    console.log('record updated!');
   res.redirect('/admin/user-listing');
  });
}); 

/*delete product*/
router.get('/admin/delete-user/:id', function(req, res){
  var id = req.params.id;
  console.log(id);
  var sql = `DELETE FROM microsidd_user WHERE user_id=${id}`;

  db.query(sql, function(err, result) {
    if (err) throw err;
    console.log('record deleted!');
    res.redirect('/admin/user-listing');
  });
});
//session test
router.get('/session_test', function(req, res){
if(req.session.count){
  req.session.count++;
  res.send("count: " +req.session.count );
}
else{
  req.session.count=1;
  res.send("First time count: " +req.session.count );

}
});

router.get('/loggout', (req, res, next) => {
  // Check if the session is exist
  if(req.session.user) {
      // destroy the session and redirect the user to the index page.
      req.session.destroy(function() {
          res.redirect('/');
      });
  }
});

module.exports = router;
