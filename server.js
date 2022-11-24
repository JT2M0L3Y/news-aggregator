const mysql = require('mysql');
const config = require('./config');
const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: false }));

app.use(express.static('public'));
app.use(express.static('public/media'));
app.use(express.static('public/js'));

app.set("view engine", "ejs");

app.listen(8080, () => { console.log('Server started on port 8080'); });

const con = mysql.createConnection(config);

con.connect((err) => {
    if (err) throw err;
    console.log("Connected to MySQL");
});

const sql = "SELECT * FROM Topics";
con.query(sql, (err, res, fields) => {
    if (err) throw err;
    console.log(res);
});

app.post('views/register.ejs', (req, res) => {
    // allow visitor to add account in database
    console.log("Register POST request received");

    res.render('register.ejs');
});

app.post('/views/newslist.ejs', (req, res) => {
    // access MySQL database to get list of news
    console.log("Home POST request received");

    res.render('newslist.ejs');
});

app.post('public/index.html', (req, res) => {
    // send user back to login page
    console.log("Login POST request received");

    res.render('index.html');
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