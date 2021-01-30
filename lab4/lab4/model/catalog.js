const Sequelize = require("sequelize");

const sequelize = new Sequelize("asm_nodejs", "root", "", {
  dialect: "mysql",
  host: "localhost",
});
//ORM

const Catalog = sequelize.define(
    "catalog",
    {
      id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
      },
    },
    { timestamps: false , freezeTableName: true });
module.exports = Catalog;
