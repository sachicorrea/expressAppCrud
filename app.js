const express = require('express');
const exphbs = require('express-handlebars');
const hbsHelpers = require('handlebars-helpers');
const mysql = require('mysql');
const path = require('path');

require('dotenv').config();

const app = express();
const port = process.env.PORT || 5000;

// Parsing middleware
// Parse application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

// Parse application/json
app.use(express.json());

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

const routes = require('./server/routes/funct');
app.use('/', routes);

app.listen(port, () => console.log(`Listening on port ${port}`));