var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Afruza2017",
    database: "employee_tracker"
  });

connection.connect();
connection.query = util.promisify(connection.query);
  
module.exports = connection;