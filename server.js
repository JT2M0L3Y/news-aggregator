const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: false }));

app.use(express.static('public'));

app.set("view engine", "ejs");

app.listen(8080, () => { console.log('Server started on port 8080'); });

app.post('views/register.ejs', (req, res) => {
    // allow visitor to add account in database
    console.log("POST request received");

    res.render('register.ejs');
});

app.post('/views/newslist.ejs', (req, res) => {
    // access MySQL database to get list of news
    console.log("POST request received");

    res.render('newslist.ejs');
});

app.post('/views/privatelist.ejs', (req, res) => {
    // access MySQL database to private list of articles
    console.log("POST request received");

    res.render('privatelist.ejs');
});