var express = require('express');

var app = express();
var mysql = require('mysql'); 
var con = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    database : 'tapduc'
  });

  app.set("view engine", "ejs");
  app.use(express.static(__dirname + '/views'));
var bodyparser = require("body-parser");
app.use(bodyparser.urlencoded({ extended: true }));

  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    });

    //Main Routes
    app.get("/", function (req, res) {
        res.render("home");
      });

      app.get("/home", function (req, res) {
        res.render("home");
      });

      app.get("/team",function(req,res){
        res.render("team");
       });

      
   app.get("/interest",function(req,res){
    res.render("interest");
   });

   

 
   
   app.post("/interest", function(req, res) {
    var user_info = { firstName: req.body.name, lastName: req.body.surname,Email:req.body.email,phoneNum:req.body.phoneNum }; 
    var q = "insert into Interest set ?";
    con.query(q, user_info, function(error, results) {
    if (error) throw error;
    res.render("confirm");  
    });
    });
    
    app.get("/contact",function(req,res){
        res.render("contact");
       });
    
     
       
       app.post("/contact", function(req, res) {
        var user_info = { firstName: req.body.name, lastName: req.body.surname,Email:req.body.email,phoneNum:req.body.phoneNum,Message:req.body.message}; 
        var q = "insert into Contact set ?";
        con.query(q, user_info, function(error, results) {
        if (error) throw error;
        res.render("confirm");  
        });
        });
  




      //Admin Routes 
      app.get("/admin", function (req, res) {
        res.render("adminHome");
      });

        app.post("/adminInsert", function(req, res) {
          var user_info = { firstName: req.body.name, lastName: req.body.surname,Email:req.body.email,phoneNum:req.body.phoneNum }; 
          var q = "insert into Interest set ?";
          con.query(q, user_info, function(error, results) {
          if (error) throw error;
          res.redirect("/admin");
          });
          });

          app.post("/adminUpdate", function (req, res) {
            var oldEmail = req.body.email;
            var q = "update Interest set Email='Need New Email' where Email=?";
            con.query(q,oldEmail, function (error,  results) {
              if (error) throw error;
              res.redirect("/admin");
            });
          });

          app.post("/adminDelete", function (req, res) {
            var Email = req.body.email;
            var q = "delete from Interest where Email = ?";
            con.query(q,Email, function (error, results) {
              if (error) throw error;
              res.redirect("/admin");
            });
          });

          app.post("/adminSearch", function (req, res) {
            var lName = req.body.surname;
            var q = "select * from Interest where lastName = ?";
            con.query(q, lName, function (error, results) {
              if (error) throw error;
              res.render("search", { data: results });
            });
          });

          app.post("/adminDisplayInterest", function (req, res) {
            var q = "select * from Interest";
            con.query(q, function (error, results) {
              if (error) throw error;
              res.render("displayInterest", { data: results });
            });
          });

          app.post("/adminDisplayContact", function (req, res) {
            var q = "select * from Contact";
            con.query(q, function (error, results) {
              if (error) throw error;
              res.render("displayContact", { data: results });
            });
          });
 
app.listen(8080, function () {
 console.log('App listening on port 8080!');
});

    