const mysql = require("mysql");

//creation de la connexion à partir de la fichier environnement
const cnx = mysql.createConnection({
  host: process.env.host_db,
  user: process.env.user_db,
  password: process.env.password_db,
  port: process.env.port_db,
  database: process.env.name_db,
});
// realiser une connexion
cnx.connect(function (err, result) {
  if (err) throw err;
  console.log("connecter à la BD");
});
module.exports = cnx;