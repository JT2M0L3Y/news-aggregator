/* API request & dynamic js for articles  */
const topicTemplate = document.querySelector('[data-topic-template]');
const topicsContainer = document.querySelector('[data-topics]');
const publisherTemplate = document.querySelector('[data-publish-template]');
const publishersContainer = document.querySelector('[data-publishers]');
const articleTemplate = document.querySelector('[data-article-template]');
const articlesContainer = document.querySelector('[data-articles-container]');
const searchInput = document.querySelector('[data-search-input]');
const tabs = document.querySelectorAll('[data-tab-target]');
const tabContents = document.querySelectorAll('[data-tab-content]');

let articles = [];

const url = 'https://newsdata.io/api/1/news?language=en';
const key = 'pub_12841145b63adb79f8fb5cc26a075a97222a1';

fetch(url + '&apikey=' + key)
    .then(res => res.json())
    .then(data => {
        console.log(data);

        articles = data.results.map(news => {
            const topic = topicTemplate.content.cloneNode(true).children[0];
            topicsContainer.appendChild(topic);

            const source = publisherTemplate.content.cloneNode(true).children[0];
            publishersContainer.appendChild(source);

            const article = articleTemplate.content.cloneNode(true).children[0];
            const title = article.querySelector('[data-title]');
            const summary = article.querySelector('[data-summary]');
            const publisher = article.querySelector('[data-publisher]');
            const link = article.querySelector('[data-link]');

            title.textContent = news.title;
            summary.textContent = news.description;
            publisher.textContent = news.source_id;
            link.href = news.link;

            articlesContainer.appendChild(article);

            return {
                title: news.title,
                summary: news.content,
                publisher: news.source_id,
                element: article
            };
        })

        console.log(articles);
    });

/* Upper-center search js to search for content */
searchInput.addEventListener('keydown', (e) => {
    if (e.keyCode == 13) {
        const value = e.target.value;

        articles.map(article => {
            let isVisible = false;
            if ((article.title != null && article.title.includes(value)) ||
                (article.summary != null && article.summary.includes(value)) ||
                (article.publisher != null && article.publisher.includes(value)))
            {
                isVisible = true;
            }

            article.element.classList.toggle('hide', !isVisible);
        })
    }
});

/* Upper-right tabs js to switch pages */
tabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const target = document.querySelector(tab.dataset.tabTarget);
        tabContents.forEach(tabContent => {
            tabContent.classList.add('hide');
        });
        tabs.forEach(tab => {
            tab.classList.add('hide');
        });
        tab.classList.remove('hide');
        target.classList.remove('hide');
    });
});

/* temporary 'login' sequence */
function validateForm() {
    var username = document.forms["login_form"]["username"].value;
    var password = document.forms["login_form"]["password"].value;
    if (username === "user" && password === "pass") {
        return true;
    } else {
        alert("Username and password must be filled out");
        return false;
    }
}
