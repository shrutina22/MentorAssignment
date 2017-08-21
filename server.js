
import express from 'express';
import http from 'http';
import mysql from 'mysql';
import fs from 'fs';
import path from 'path';
import bodyparser from 'body-parser';
let app = express();

app.use(bodyparser.urlencoded({ extended: true }));
app.use(bodyparser.json());
const config={
  host:'localhost',
  port:3306,
  user:'root',
  password:'cybage@123',
  database:'datadb'
};
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'node_modules/jquery/dist/')));
app.use(express.static(path.join(__dirname, 'node_modules/bootstrap/dist/')));
app.use(express.static(path.join(__dirname, 'node_modules/datatables.net/js/')));


      app.get('/', (req,res)  => {
              var data= fs.readFile('./Datatable.html',   function (err, data) {
              res.setHeader('Content-Type', 'text/html');
              res.send(data);
                });

});



    app.get('/data', (req,res) => {
      var conn = mysql.createConnection(config);
      conn.connect();
          conn.query('select * from datatable',function(err,result,fields){
                  if(err)
                  {
                    console.log(err);
                  }
                  else
                  {
                    res.setHeader('Content-Type', 'application/json');
                    res.send(result);
                  }
              });
    conn.end();
    });


    app.post('/add', (req, res) => {
      var conn = mysql.createConnection(config);
      conn.connect();
        conn.query("Insert into datatable (name,place,animal,thing) VALUES ('"+req.body.name+"','"+req.body.place+"','"+req.body.animal+"','"+req.body.thing+"')",function(err, result)
          {
                if (err)
                {
                   err;
                 }
                 else
                 {
                   console.log("done");
                 }
                   res.redirect("/");
          });

    conn.end();
    });



    app.get('/deletee/:id', (req,res) => {
      var conn = mysql.createConnection(config);
      conn.connect();
       var id = req.params.id;
       console.log(id);
                conn.query('DELETE FROM datatable WHERE id= ?',[id], function(err, result){
                          if(err){
                            console.log(err);
                            throw err;
                          }
                          else {
                             console.log('Some data has been deleted');


                              }
                            });
                 res.redirect("/");
    conn.end();

  });


app.listen(8100);
console.log('server running on port 8100');
