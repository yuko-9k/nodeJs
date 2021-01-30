const express = require("express");
const { render } = require("ejs");

const router = express.Router();

const catalog = require("../controller/catalog");
const product = require("../controller/product");
const user = require("../controller/user");
const comment = require("../controller/comment");

// Trang chủ
router.get("/", catalog.getAll);

// Load hết sản phẩm 
router.get("/product", product.getAll);

// Load chi tiết sản phẩm
router.get("/detail/:id", product.getProductById, comment.createComment);
router.post("/detail/:id", product.getProductById, comment.createComment);

// Load sản phẩm theo catagory
router.get("/catalog/:id", product.getProductByCatalog);

router.get('/register', (req,res) => {
    res.render('register');
})
// router.get('/register', catalog.getAll)

router.post('/register',user.createUser);

router.get('/login',(req,res) => {
    res.render('login');
});

router.post("/login", user.login);

// comment
router.post("/comment/:id_product",comment.createComment)

module.exports = router;
