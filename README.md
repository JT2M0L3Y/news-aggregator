# README

<a name="title"></a>
## News Compilation Website

<a name="desc"></a>
### Description

This project is a website that allows members to filter a news feed to only see content from sources and topics they want to see. 
The goal here is to reduce online surfing time for web visitors to find what news they want to see.

<a name="table"></a>
### Table of Contents
- [README](#readme)
  - [News Compilation Website](#news-compilation-website)
    - [Description](#description)
    - [Table of Contents](#table-of-contents)
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

At this moment, one of the important features of this project is the search bar (although it requires terms listed among the articles that show up, which is a problem because most news provided by the API has been random). The other important feature is the ability to add/remove articles with the 'My List' page. But, this only works for adding individual articles.

![image](https://user-images.githubusercontent.com/67881240/200466686-0f387052-8086-4605-bb57-09347a8b2500.png)

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
