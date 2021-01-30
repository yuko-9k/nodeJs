const Comment = require("../model/comment");

exports.createComment = (req, res) => {
  const content = req.body.content;
  // const id = req.params;
  // console.log("id",id);
  // const id_product = req.params;
  const id_product = req.body.id_product;

  console.log("id_product",id_product);

  const comment = new Comment({
    content : content,
    id_product : id_product,
    id_user : req.session.userID,
  });
  comment
    .save()
    .then((result) => {
      res.redirect("/detail/:id_product");
    })
    .catch((err) => {
      if (err) throw err;
    });
};
