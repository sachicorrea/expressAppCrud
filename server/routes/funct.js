const express = require('express');
const router = express.Router();
const functController = require('../controllers/functController');
const classController = require('../controllers/classController');
const authController = require('../controllers/auth');

// Routes
router.get('/', functController.view);
router.get('/addfunction', functController.form);
router.post('/addfunction', functController.create);
router.get('/editfunction/:id', functController.edit);
router.post('/editfunction/:id', functController.update);
//router.get('/', functController.sidebar);
router.get('/details/:id', functController.viewall);

router.get('/classlist', classController.view);
router.get('/addclass', classController.form);
router.post('/addclass', classController.create);
router.get('/editclass/:id', classController.edit);
router.post('/editclass/:id', classController.update);
router.get('/viewclass/:id', classController.viewall);

router.get('/register', (req, res) => {
    res.render('register');
});

router.get('/login', (req, res) => {
    res.render('login');
});

router.get('/profile', authController.isLoggedIn, (req, res) => {
    console.log(req.message);
    res.render('profile');
});

module.exports = router;