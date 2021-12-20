const dotenv = require('dotenv').config();
const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const path = require('path');

const PORT = process.env.PORT || 5000;
const HOST = process.env.HOST;

// Database
const db = require('./config/database');
const { sequelize } = require('./config/database');

const app = express();

// Handlebars
app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

// Body Parser
app.use(express.urlencoded({ extended: false }));

// Set static folder
app.use(express.static(path.join(__dirname, 'public')));

// Index route
app.get('/', (req, res) => res.render('index', { layout: 'landing' }));

// Book routes
app.use('/books', require('./routes/books'));

app.listen(PORT,HOST, console.log(`Server started on port ${HOST}: ${PORT}`));