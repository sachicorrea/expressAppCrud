const express = require('express');
const exphbs = require('express-handlebars');
const req = require('express/lib/request');
const hbsHelpers = require('handlebars-helpers');
const mysql = require('mysql');
const path = require('path');
const cookieParser = require('cookie-parser');
const routes = require('./server/routes/funct');

require('dotenv').config();

const app = express();
const port = process.env.PORT || 5000;

// Parsing middleware
// Parse application/x-www-form-urlencoded (as sent by HTML forms)
app.use(express.urlencoded({ extended: true }));

// Parse application/json bodies (as sent by API clients)
app.use(express.json());
app.use(cookieParser());

// let to use a favicon
let options = {
    dotfiles: "ignore", //allow, deny, ignore
    etag: true,
    extensions: ["htm", "html"],
    index: false, //to disable directory indexing
    maxAge: "7d",
    redirect: false,
    setHeaders: function (res, path, stat) {
        //add this header to all static responses
        res.set("x-timestamp", Date.now());
    }
};

// Static files
//app.use(express.static('public', options));
app.use(express.static(path.join(__dirname, '/public'), options));

// Template engine
const handlebars = exphbs.create({ extname: '.hbs' });
app.engine('.hbs', handlebars.engine);
app.set('view engine', '.hbs');

// Routes
app.use('/', routes);
app.use('/auth', require('./server/routes/auth'));

app.listen(port, () => console.log(`Listening on port ${port}`));