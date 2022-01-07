const mysql = require('mysql');

// Connection
const connection = mysql.createConnection({
    multipleStatements: true,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});

// View functions

exports.view = (req, res) => {

    connection.query('SELECT `id`,`function_name` FROM `function_tb`', (err, rows) => {
        if (!err) {
            res.render('./partials/sidebar', { functions: rows });
        } else {
            console.log(err);
        }
        //console.log('The data from function_tb table: \n', rows);
    });
}

/*
// View functions
exports.viewfunctions = (req, res) => {
    // User the connection
    connection.query('SELECT `id`,`function_name` FROM `function_tb`', (err, rows) => {
        if (!err) {
            res.render('sidebar', { functions: rows });
        } else {
            console.log(err);
        }
        //console.log('The data from function_tb table: \n', rows);
    });
}
*/

// Form to create and update a function
exports.form = (req, res) => {

    connection.query('SELECT * FROM `class_tb` WHERE `id` > 0', [req.params.id], (err, rows) => {
        if (!err) {
            res.render('add-function', { class: rows });
        } else {
            console.log(err);
        }
        //console.log('The data from function_tb table: \n', rows);
    });
}

/*
// Sidebar
exports.sidebar = (req, res) => {
    res.render('home');
}
*/

// Add new function
exports.create = (req, res) => {
    const { parent_id, function_name, label, description, source_code, syntax, example } = req.body;

    connection.query('INSERT INTO `function_tb` SET `parent_id` = ?, `function_name` = ?, `label` = ?, `description` = ?, `source_code` = ?, `syntax` = ?, `example` = ?', [parent_id, function_name, label, description, source_code, syntax, example], (err, rows) => {
        if (!err) {
            res.render('add-function', { rows });
        } else {
            console.log(err);
        }
        console.log('The data from function_tb table: \n', rows);
    });
}

// Edit a fuction
exports.edit = (req, res) => {

    connection.query('SELECT * FROM `function_tb` WHERE `id` = ?; SELECT * FROM `class_tb`', [req.params.id], (err, rows) => {

        if (!err) {
            res.render('edit-function', { post: rows[0], class: rows[1], listExists: true });
        } else {
            console.log(err);
        }
        //console.log('The data from function_tb table: \n', rows);
    });
}

// Update a class
exports.update = (req, res) => {
    const { parent_id, function_name, label, description, source_code, syntax, example } = req.body;

    connection.query('UPDATE `function_tb` SET `parent_id` = ?, `function_name` = ?, `label` = ?, `description` = ?, `source_code` = ?, `syntax` = ?, `example` = ? WHERE `id` = ?', [parent_id, function_name, label, description, source_code, syntax, example, req.params.id], (err, rows) => {

        if (!err) {
            connection.query('SELECT * FROM `function_tb` WHERE `id` = ?', [req.params.id], (err, rows) => {

                if (!err) {
                    res.render('edit-function', { rows });
                } else {
                    console.log(err);
                }
                //console.log('The data from function_tb table: \n', rows);
            });
        } else {
            console.log(err);
        }
        //console.log('The data from user table: \n', rows);
    });
}

// View functions detailed information
exports.viewall = (req, res) => {

    connection.query('SELECT * FROM `function_tb` WHERE `id` = ?', [req.params.id], (err, rows) => {
        if (!err) {
            res.render('details', { rows });
        } else {
            console.log(err);
        }
        //console.log('The data from function_tb table: \n', rows);
    });
}