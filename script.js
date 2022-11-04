window.addEventListener("DOMContentLoaded", domLoaded);

var article_count = 15;

function domLoaded() {
    for (var i = 0; i < article_count; i++) {
        var article = document.createElement("article");
        article.innerHTML = "<h1>Article " + i + "</h1>";
        document.getElementsByClassName("news-content").appendChild(article);
    }
};