const express = require('express');
const router = express.Router();
const db = require('../config/database');
const Books = require('../models/Books');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

// Get the list of books in the datbase
router.get('/', (req, res) => 
  Books.findAll()
    .then(book => res.render('books', {
        book
      }))
    .catch(err => res.render('error', {error: err})));

// Display the add Books page
router.get('/add', (req, res) => res.render('add'));


// Add a Book to the database
router.post('/add', (req, res) => {
  let { isbn, name, genre, publisher_id, price, number_of_pages } = req.body;
  let errors = [];

  if(!isbn) {
    errors.push({ text: 'Kindly add a title' });
  }
  if(!name) {
    errors.push({ text: 'Kindly add a name' });
  }
  if(!genre) {
    errors.push({ text: 'Kindly add a genre' });
  }
  if(!publisher_id) {
    errors.push({ text: 'Kindly add a publisher id' });
  }
  if(!price) {
    errors.push({ text: 'Kindly add a price' });
  }
  if(!number_of_pages) {
    errors.push({ text: 'Kindly enter the number of pages' });
  }

  // Check for errors
  if(errors.length > 0) {
    res.render('add', {
      errors,
      isbn, 
      name, 
      genre, 
      publisher_id, 
      price,
      number_of_pages
    });
  } else {
    if(!price) {
      price = 'Unknown';
    } else {
      price = `$${price}`;
    }

    Books.create({
      isbn,
      name,
      genre,
      publisher_id,
      price,
      number_of_pages
    })
      .then(book => res.redirect('/books'))
      .catch(err => res.render('error', {error:err.message}))
  }
});

//Book search
router.get('/search', (req, res) => {
  let { bookSsearch } = req.query;

  Books.findAll({ where: { genre: { [Op.like]: '%' + bookSsearch + '%' } } })
    .then(book => res.render('books', { book }))
    .catch(err => res.render('error', {error: err}));
});

module.exports = router;

