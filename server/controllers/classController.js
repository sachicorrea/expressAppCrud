//const { contentType } = require('express/lib/response');
const mysql = require('mysql');

// Connection
const connection = mysql.createConnection({
    multipleStatements: true,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    connectTimeout: 30000
});

exports.view = (req, res) => {
    // Class creation
    connection.query('SELECT `id`, `class_name` FROM `class_tb`', (err, rows) => {
        if (!err) {
            res.render('class-list', { rows });
        } else {
            console.log(err);
        }
        //console.log('The data from class_tb table: \n', rows);
    });
}

// Form to create and update a class
exports.form = (req, res) => {
    res.render('add-class');
}

// Add a ne class
exports.create = (req, res) => {
    const { class_name } = req.body;

    connection.query('INSERT INTO `class_tb` SET `class_name` = ?', [class_name], (err, rows) => {
        if (!err) {
            res.render('add-class');
        } else {
            console.log(err);
        }
        //console.log('The data from class_tb table: \n', rows);
    });
}

// Edit a class
exports.edit = (req, res) => {
    connection.query('SELECT * FROM `class_tb` WHERE `id` = ?', [req.params.id], (err, rows) => {

        if (!err) {
            res.render('edit-class', { rows });
        } else {
            console.log(err);
        }
        //console.log('The data from class_tb table: \n', rows);
    });
}

exports.update = (req, res) => {
    const { class_name } = req.body;

    connection.query('UPDATE `class_tb` SET `class_name` = ? WHERE `id` = ?', [class_name, req.params.id], (err, rows) => {

        if (!err) {
            connection.query('SELECT * FROM `class_tb` WHERE `id` = ?', [req.params.id], (err, rows) => {

                if (!err) {
                    res.render('edit-class', { rows });
                } else {
                    console.log(err);
                }
                //console.log('The data from class_tb table: \n', rows);
            });
        } else {
            console.log(err);
        }
        //console.log('The data from class_tb table: \n', rows);
    });
}

exports.viewall = (req, res) => {
    connection.query('SELECT * FROM `class_tb` WHERE `id` = ?', [req.params.id], (err, rows) => {
        if (!err) {
            res.render('view-class', { rows });
        } else {
            console.log(err);
        }
        //console.log('The data from class_tb table: \n', rows);
    });
}