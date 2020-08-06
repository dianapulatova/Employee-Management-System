const mysql = require("mysql");
const cTable = require('console.table');
const inquirer = require ('inquirer'); 
const connection = mysql.createConnection({
  host: "localhost",

  // Your port;
  port: 3306,

  // Your username
  user: "root",

  password: "Afruza2017",
  database: "Employee Tracker"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  start(); 
});

function start(){
  inquirer
  .prompt ([
    {
      type: "list", 
      message: "What would you like to do?",
      name: "start",
      choices: [
      "Add Employee", 
      "View all Employees", 
      "Remove Employee",
      "Add Department", 
      "View all Departments",
      "Add Roles", 
      "View all Roles", 
      "Update Employee Role", 
      "Quit"
    ]}
  
  ])}