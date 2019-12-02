const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');
 
// parse application/json
app.use(bodyParser.json());

app.use(function(req, res, next){
  res.header('Access-Control-Allow-Origin', "*");
  res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
  res.header('Access-Control-Allow-Headers', 'Content-Typt');
  next();
})
 
//create database connection
const conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'BDocupa'
});
 
//connect to database
conn.connect((err) =>{
  if(err) throw err;
  console.log('Mysql Connected...');
});
 
//show all radar
app.get('/api/radar',(req, res) => {
  let sql = "SELECT * FROM radar";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

//show all endereco
app.get('/api/endereco',(req, res) => {
  let sql = "SELECT * FROM endereco";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});
 
// //show single product
// app.get('/api/products/:id',(req, res) => {
//   let sql = "SELECT * FROM product WHERE product_id="+req.params.id;
//   let query = conn.query(sql, (err, results) => {
//     if(err) throw err;
//     res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
//   });
// });
 
// //add new product
// app.post('/api/products',(req, res) => {
//   let data = {product_name: req.body.product_name, product_price: req.body.product_price};
//   let sql = "INSERT INTO product SET ?";
//   let query = conn.query(sql, data,(err, results) => {
//     if(err) throw err;
//     res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
//   });
// });
 
// //update product
// app.put('/api/products/:id',(req, res) => {
//   let sql = "UPDATE product SET product_name='"+req.body.product_name+"', product_price='"+req.body.product_price+"' WHERE product_id="+req.params.id;
//   let query = conn.query(sql, (err, results) => {
//     if(err) throw err;
//     res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
//   });
// });
 
// //Delete product
// app.delete('/api/products/:id',(req, res) => {
//   let sql = "DELETE FROM product WHERE product_id="+req.params.id+"";
//   let query = conn.query(sql, (err, results) => {
//     if(err) throw err;
//       res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
//   });
// });
 
//Server listening
app.listen(3000,() =>{
  console.log('Server started on port 3000...');
});