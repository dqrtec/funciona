const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql');

const app = express();

app.use(cors());

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
  database: 'bdocupa'
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
 
//show single product
app.get('/api/radar/:id',(req, res) => {
  let sql = "SELECT * FROM radar WHERE rad_role="+req.params.id;
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

app.get('/api/endereco/:id',(req, res) => {
  let sql = "SELECT * FROM endereco WHERE end_id="+req.params.id;
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});
 
//add new product
app.post('/api/user',(req, res) => {

  let data = {rad_email: req.body.rad_email, rad_senha: req.body.rad_senha, rad_autor: req.body.rad_autor};
  let sql = "INSERT INTO radar SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

app.post('/api/user/login',(req, res) => {
  let sql = "select * from radar where rad_email LIKE '"+req.body.rad_email+"' and rad_senha LIKE '"+req.body.rad_senha+"'";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

app.post('/api/endereco',(req, res) => {

  let data = {end_latitude: req.body.end_latitude, end_longitude: req.body.end_longitude};
  let sql = "INSERT INTO endereco SET ?";
  let query = conn.query(sql, data,(err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

//update product
app.post('/api/radar/atualizar/',(req, res) => {
  let data = {rad_titulo:req.body.rad_titulo, rad_tags:req.body.rad_tags, rad_informacao_adicional:req.body.rad_informacao_adicional, rad_descricao:req.body.rad_descricao, rad_end_id:req.body.rad_end_id}
  let sql = "UPDATE radar SET ? WHERE rad_role="+req.body.rad_role;
  let query = conn.query(sql, data ,(err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

app.post('/api/endereco/atualizar/:id',(req, res) => {
  let data = {end_latitude:req.body.end_latitude, end_longitude:req.body.end_longitude}
  let sql = "UPDATE endereco SET ? WHERE end_id="+req.params.id;
  let query = conn.query(sql, data ,(err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});
 
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