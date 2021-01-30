const Catalog = require('../model/catalog');
// const Product = require('../model/product');

exports.getAll = (req, res) =>{
  // đọc database
  Catalog.findAll().then(catalogs => {
    // console.log(req.session.user.userId); // syntax get user id 
    if (req.session.isLoggedIn) {
      // res.send("Welcome back, " + req.session.username + "!");
      res.render('home',{catalogs:catalogs})
    }
    res.render('home',{catalogs:catalogs})

  })
  .catch(err => console.log(err))
}

// app.get("/home", function (req, res) {
//   if (req.session.loggedin) {
//     res.send("Welcome back, " + req.session.username + "!");
//   } else {
//     res.send("Please login to view this page!");
//   }
//   res.end();
// });

// exports.getAll = (req, res) =>{
//   // đọc database
//   Catalog.findAll().then(catalogs => {
//     res.render('register',{catalogs:catalogs})
//   })
//   .catch(err => console.log(err))
// }

// exports.getProductById = (req,res)=>{
//   const catalogID = req.params.id;
//   Catalog.findByPk(catalogID).then(product => {
//     // console.log(product.nameProduct);
//     // console.log(product.description);
//     // console.log(product.images);
//     res.render('productDetail',{product,catalog:[]})
//   })
//   .catch(err => console.log(err))  
// }


