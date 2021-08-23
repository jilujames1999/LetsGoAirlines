require('dotenv').config();
const mysql = require('mysql');

var my_con = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASS,
    database: process.env.MYSQL_DB
});

my_con.connect(function(err) {             
    if(err) {                                     
      console.log('Connection to MYSQL failed:', err);
    }else{
      console.log('Connected to MYSQL');
    }                                  
  });

module.exports = my_con;