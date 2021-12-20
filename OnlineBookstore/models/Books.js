const Sequelize = require('sequelize');
const db = require('../config/database');

const Books = db.sequelize.define('books', {
  isbn: {
    type: Sequelize.STRING
  },
  name: {
    type: Sequelize.STRING
  },
  genre: {
    type: Sequelize.STRING
  },
  publisher_id: {
    type: Sequelize.STRING
  },
  price: {
    type: Sequelize.STRING
  },
  number_of_pages: {
    type: Sequelize.STRING
  }
});


Books.sync().then(() => {
  console.log('A table has been created');
});

module.exports = Books;