const mysql = require('mysql');
const config = require('./config');
const express = require('express');
const session = require('express-session');
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

    let username = req.body.username;
    let password = req.body.password;

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
            res.send('Please login to view this page!');
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
                [username, password, email, first, last], (err, results) => {
                    if (err) throw err;
                    if (results != null) {
                        req.session.loggedin = true;
                        req.session.username = username;
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
app.post('/', (req, res) => {
    // allow visitor to login to their account
    console.log("Already have account POST request received");

    res.redirect('index.html');
})

// path for user pressing logout on home page
app.post('/logout', (req, res) => {
    // log out of user account/end session
    console.log("Logout POST request received");

    req.session.destroy();
    console.log("Session destroyed");

    res.redirect('index.html');
});

// path for user loading the articles tab on home page
app.get('/articles', (req, res) => {
    // load articles tab
    console.log("Articles POST request received");

    sql = 'SELECT * FROM Articles;'

    // get articles from database
    con.query(sql, (err, results) => {
        if (err) throw err;
        if (results != null) {
            res.json(results);
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
            res.json(results);
        } else {
            res.send('No list found!');
        }
    })
});

/*
    // server stuff
    app.get("/text", (res, req) => {
        // grabbing field from front end
        console.log(req.query.someProperty);
        // returning data to front end
        res.json({anotherValue: "Hello", moredata: 42});
    })

    // ejs stuff
    $(document).ready(() => {
        $("#search").click(() => {
            let reqData = {
            someProperty: "hello, world",
            multipleProps: "some val"
            }

            $.ajax({
                url: "/text",
                method: "GET",
                data: reqData,
                dataType: "json"
            }).done((data) => {
                // update text element
                hide previously shown element
                show previously hidden element
            });
        })
    })
*/