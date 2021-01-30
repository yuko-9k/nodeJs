const Sequelize = require('sequelize');

const sequelize = new Sequelize('asm_nodejs', 'root', '', {
  dialect: 'mysql',
  host: 'localhost'
});
//ORM
const User = sequelize.define('user', {
    id: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    username: {
      type: Sequelize.STRING,
      allowNull: true
    },
    email:{
      type: Sequelize.STRING,
      allowNull: false
    },
    password:{
      type: Sequelize.STRING,
      allowNull: false
    },
  },
  { timestamps: false, freezeTableName: true }
  );
  module.exports = User;
