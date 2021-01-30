const Sequelize = require("sequelize");

const sequelize = new Sequelize("asm_nodejs", "root", "", {
  dialect: "mysql",
  host: "localhost",
});
//ORM
const Comment = sequelize.define(
  "comment",
  {
    id: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true,
    },
    content: {
      type: Sequelize.STRING,
      allowNull: true,
    },
    id_product: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
    id_user: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
  },
  { timestamps: false, freezeTableName: true }
);
module.exports = Comment;
