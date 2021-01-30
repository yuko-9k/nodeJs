const express = require("express");
const fileUpload = require("express-fileupload");
const bodyParser = require("body-parser");
const path = require("path");
const mysql = require("mysql");
const cookieSession = require("cookie-session");
const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieSession({
  name: 'session',
  keys : ['efefef','rbeeheerre'],
  maxAge : 3600 * 1000
}))
//khai bao sử dụng template ejs
app.set("view engine", "ejs");
app.set("views", "./views");
app.use(express.static("public"));
app.use(fileUpload());

// route
const routeSite = require('./routes/site');
const session = require("express-session");
app.use('/',routeSite); // nguoi dung

app.listen(port, () => {
  console.log(`Ứng dụng đang chạy với port http://localhost:${port}`);
});