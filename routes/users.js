var express = require('express');
var router = express.Router();
var db = require('../db');

var bodyParser = require('body-parser');

router.use(bodyParser.json()); // for parsing application/json
//router.use(bodyParser.urlencoded({extended: true})); // for parsing application/x-www-form-urlencoded


/* GET users listing. */
/*router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});*/

/* get method for fetch all users. */
router.get('/', function(req, res, next) {
  var sql = "select * from microsidd_user";
  db.query(sql, function(err, rows, fields) {
    if (err) {
      res.status(500).send({ error: 'Something failed!' })
    }
    res.json(rows)
  })
});


/*get method for fetch single product*/
router.get('/:id', function(req, res, next) {
  var id = req.params.id;
  var sql = `SELECT * FROM microsidd_user WHERE user_id=${id}`;
  db.query(sql, function(err, row, fields) {
    if(err) {
      res.status(500).send({ error: 'Something failed!' })
    }
    res.json(row[0])
  })
});

/*post method for create user*/
router.post('/create', function(req, res, next) {
 /* var name = req.body.name;
  var sku = req.body.sku;
  var price = req.body.price;*/
  const author = req.body;
  //var sql = `INSERT INTO products (name, sku, price, active, created_at) VALUES ("${name}", "${sku}", "${price}", 1, NOW())`;
 // db.query(sql, function(err, result) {
  db.query('INSERT INTO microsidd_user SET ?', author, (err, result) => {
    if(err) {
      res.status(500).send({ error: 'Something failed!' })
    }
    console.log(result);
    res.json({'status': 'success', id: result.insertId})
  })
});


/*put method for update user*/
router.put('/update/:id', function(req, res, next) {
  /*var id = req.params.id;
  var name = req.body.name;
  var sku = req.body.sku;
  var price = req.body.price;*/
  var id = req.params.id;
  const author = req.body;
  //console.log({{id}});

  //var sql = `UPDATE products SET name="${name}", sku="${sku}", price="${price}" WHERE id=${id}`;
  var sql = `UPDATE microsidd_user SET ? WHERE user_id=${id}`;
  
 // db.query(sql, function(err, result) {
  db.query(sql, author, (err, result) => {
    if(err) {
      res.status(500).send({ error: 'Something failed!' })
    }
    res.json({'status': 'success'})
  })
});


/*delete method for delete product*/
router.delete('/delete/:id', function(req, res, next) {
  /*var id = req.params.id;
  var sql = `DELETE FROM products WHERE id=${id}`;*/
  var id = req.params.id;
  console.log(id);
  var sql = `DELETE FROM microsidd_user WHERE user_id=${id}`;

  
    db.query(sql, function(err, result) {
    if(err) {
      res.status(500).send({ error: 'Something failed!' })
    }
    res.json({'status': 'success'})
  })
})
module.exports = router;
