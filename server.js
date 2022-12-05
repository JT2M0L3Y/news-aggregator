const mysql = require('mysql');
const config = require('./config');
const express = require('express');
const session = require('express-session');
const validator = require('mysql-validator');
const app = express();

app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));
app.use(express.urlencoded({ extended: false }));
app.use(express.static('public'));
app.use(express.static('public/css'));
app.use(express.static('public/media'));
app.use(express.static('public/js'));

app.set("view engine", "ejs");

app.listen(8080, () => { console.log('Server started on port 8080'); });

const con = mysql.createConnection(config);

con.connect((err) => {
    if (err) throw err;
    console.log("Connected to MySQL");
});

// path(s) for user login and redirect to home page
app.post('/authenticate', (req, res) => {
    // authenticate user login credentials
    console.log("Login POST request received");

    let types = [];

    let username = req.body.username;
    let password = req.body.password;

    var checkUser = null
    var checkPass = null

    // query table attribute types
    con.query('DESCRIBE Users', (err, result) => {
        if (err) throw err;

        // validate username and password
        let userType = result[0].Type
        let passType = result[1].Type

        checkUser = validator.check(username, userType);
        checkPass = validator.check(password, passType);

        if (validator.check(username, userType)) {
            console.log(checkUser.message);
            res.end();
        } else if (checkPass) {
            console.log(checkPass.message);
            res.end();
        } else {
            console.log("Validator passed!");
        }
    })

    if (username && password) {
        con.query('SELECT * FROM Users WHERE username = ? AND password = ?',
            [username, password], (err, results) => {
                if (err) throw err;

                if (results.length > 0) {
                    req.session.loggedin = true;
                    req.session.userId = username;
                    res.redirect('/views/home.ejs');
                } else {
                    res.send('Incorrect Username and/or Password!');
                }
            })
    } else {
        res.send('Please enter Username and Password!');
        res.end();
    }
})
    .get('/views/home.ejs', (req, res) => {
        // if user is logged in, redirect to home page
        if (req.session.loggedin) {
            console.log("Home GET request received");
            res.render('home.ejs', { username: req.session.username });
        } else {
            res.redirect('../index.html');
        }
        res.end();
    });

// path(s) for user registration and redirect to login page
app.post('/register', (req, res) => {
    // allow visitor to add account in database
    console.log("Register POST request received");

    res.render('register.ejs');
})
    .get('/createAccount', (req, res) => {
        console.log("Login POST request received");

        let first = req.query.first;
        let last = req.query.last;
        let email = req.query.email;
        let username = req.query.username;
        let password = req.query.password;

        if (first && last && email && username && password) {
            con.query('INSERT INTO Users VALUES (?, ?, ?, ?, ?)',
                [username, password, email.normalize(), first.trim(), last.trim()], (err, results) => {
                    if (err) throw err;
                    if (results != null) {
                        // go back to login page
                        res.redirect('index.html');
                    } else {
                        res.send('Insufficient Username and/or Password!');
                    }
                })
            console.log("Account created");
        } else {
            res.send('Please enter something for all fields!');
            res.end();
        }
    });

// path for user pressing login on register page
app.post('/back', (req, res) => {
    // allow visitor to login to their account
    console.log("Already have account POST request received");

    res.redirect('index.html');
})

// path for user pressing logout on home page
app.get('/logout', (req, res) => {
    // log out of user account/end session
    console.log("Logout POST request received");

    req.session.destroy();
    console.log("Session destroyed");

    res.redirect('index.html');
});

app.get('/delete', (req, res) => {
    console.log("Delete GET request received");

    let user = req.session.userId;

    con.query('SELECT username FROM Users WHERE username = ?', [user], (err, result) => {
        if (err) throw err;
        if (result != null) {
            // remove user from database
            con.query('DELETE FROM ListItem WHERE username = ?', [user], (err, result) => {
                if (err) throw err;
                console.log("Number of records deleted: " + result.affectedRows);
            });

            con.query('DELETE FROM Users WHERE username = ?', [user], (err, result) => {
                if (err) throw err;
                console.log("Number of accounts deleted: " + result.affectedRows);
            });
        }
    })

    req.session.destroy();
    console.log("Session destroyed");

    res.redirect('index.html');
})

// path for user loading the articles tab on home page
app.get('/articles', (req, res) => {
    // load articles tab
    console.log("Articles POST request received");

    sql = 'SELECT * FROM Articles'

    // get articles from database
    con.query(sql, (err, results) => {
        if (err) throw err;
        if (results != null) {
            console.log("Articles retrieved");
            console.log(results);
            res.render('home.ejs', results);
        } else {
            res.send('No articles found!');
        }
    })
});

// path for user loading the list tab on home page
app.get('/list', (req, res) => {
    // load list tab
    console.log("List POST request received");

    sql = 'SELECT * '
    sql += 'FROM ListItem JOIN Articles USING(article_Id) '
    sql += 'WHERE username = ?';

    // get list from database
    con.query(sql, [req.session.userId], (err, results) => {
        if (err) throw err;
        if (results != null) {
            console.log("List retrieved");
            console.log(results);
            res.render('home.ejs', results);
        } else {
            res.send('No list found!');
        }
    })
});
