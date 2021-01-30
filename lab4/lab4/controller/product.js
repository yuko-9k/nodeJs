const Product = require("../model/product");

exports.getAll = (req, res) => {
  Product.findAll()
    .then((products) => {
      res.render("product", { products: products, catalog: [] });
    })
    .catch((err) => console.log(err));
};

exports.getProductById = (req, res) => {
  const productID = req.params.id;
  Product.findByPk(productID).then((product) => {
    res.render("productDetail", { product: product, catalog: [] });
  });
};

exports.getProductByCatalog = (req, res) => {
  const id_catalog = req.params.id;
  Product.findAll({ where: { id_catalog: id_catalog } }).then((product) => {
    console.log(product);
    res.render("list-product", { product });
  });
};
