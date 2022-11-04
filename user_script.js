window.addEventListener("DOMContentLoaded", domLoaded);

var article_count = 15;

function domLoaded() {
    var item_buttons = document.getElementsByClassName("item-button");

    for (var i = 0; i < item_buttons.length; i++) {
        item_buttons[i].addEventListener("click", itemButtonClicked);
    }

    for (var i = 0; i < article_count; i++) {
        var article = document.createElement("article");
        article.className = "news-articles";
        article.innerHTML = "<h1>Article " + i + "</h1>";
        document.getElementsByClassName("scroll").appendChild(article);
    }
}

function itemButtonClicked() {
    var item_buttons = document.getElementsByClassName("item-button");
    
    
}