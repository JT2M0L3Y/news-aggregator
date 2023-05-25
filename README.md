# README

<a name="title"></a>
## News Compilation Website

<a name="desc"></a>
### Description

This project is a website that allows members to filter a news feed to only see content from sources and topics they want to see. 
The goal here is to reduce online surfing time for web visitors to find what news they want to see.
As my first attempt at full-stack development, this new compilation web app should demonstrate my abilities with common tools and practices at the end of 2022.

<a name="table"></a>
### Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Credits](#credits)
- [License](#license)

<a name="install"></a>
### Installation

To run this web app, one must initialize a NodeJS environment.  

Within this environment there are a few packages that are required:
* express
* express-session
* ejs
* mysql
* mysql-validator

This project uses a MySQL database. As such, I have included a pair of SQL scripts to be used in populating a MySQL database. The host server I use to access this database is Gonzaga's dedicated MySQL server.

To configure one's database connection, a config.json file is required that contains:
```
{
    "host": "desired server",
    "user": "your username",
    "password": "your password",
    "database": "your database"
}
```

Also, I have included my API key to the news API I used. This key allows for 200 requests per day. Because the articles cannot yet be queried from the database, I have kept the API call for the present deliverable.

<a name="use"></a>
### Usage

Features:
- register/delete account to track saved articles
- login/logout to access saved articles
- search articles (currently only articles from the API)
- click to read more about an article

![articles_page](https://user-images.githubusercontent.com/67881240/205704385-fa568ff7-21ac-4cc0-bfbc-290696f67772.png)

<a name="cont"></a>
### Contributing

I currently have no expectations that others will contribute to this project.

<a name="cred"></a>
### Credits

Contributors: 
- JT2M0L3Y

<a name="licence"></a>
### License

No license needed at this stage of development.

[GitHub’s licensing guide](https://choosealicense.com/)
