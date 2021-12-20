const { Sequelize } = require('sequelize');
const sequelize = new Sequelize('project', 'postgres', 'student', {
  host: 'localhost',
  dialect: 'postgres'
});


try {
  sequelize.authenticate();
  console.log('Connection to the database has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);
}

var db = {};

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;