const Sequelize = require('sequelize');

const sequelize = new Sequelize('asm_nodejs', 'root', '', {
  dialect: 'mysql',
  host: 'localhost'
});
//ORM
const Product = sequelize.define('products', {
    id: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: Sequelize.STRING,
      allowNull: false
    },
    description:{
      type: Sequelize.STRING,
      allowNull: false
    },
    image:{
      type: Sequelize.STRING,
      allowNull: false
    },
    // id_catalog: {
    //     type: Sequelize.INTEGER,
    //     references: 'catalog',
    //     referencesKey: 'id',
    //     allowNull: false,
    //   }

  },
  { timestamps: false }
  );
  module.exports = Product;
