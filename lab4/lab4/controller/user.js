const User = require("../model/user");
const bcrypt = require("bcrypt");

exports.createUser = (req, res) => {
  const username = req.body.username;
  const email = req.body.email;
  const password = req.body.password;

  //   const { username, email, password } = req.body;
  console.log(username, password, email);

  bcrypt.hash(password, 12).then((hash_pass) => {
    const user = new User({
      username: username,
      email: email,
      password: hash_pass,
    });
    user
      .save()
      .then((result) => {
        res.send("Đăng kí thành công rồi nha");
      })
      .catch((err) => {
        if (err) throw err;
      });
  });
};

exports.login = (req, res, next) => {
  const username = req.body.username;
  const password = req.body.password;
  User.findAll({ where: { username: username, password: password } })
    .then((result) => {
      req.session.isLoggedIn = true;
      req.session.user = {
        userId: result[0].id,
        userName: result[0].username,
      };
      // process.exit();
      res.redirect("/");
    })
    .catch((err) => {
      console.log("fail!!!!!");
      res.render("login", {
        login_errors: ["Invalid Password!"],
      });
    });
};
