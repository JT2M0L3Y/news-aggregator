const tabs = document.querySelectorAll('[data-tab-target]');
const tabContents = document.querySelectorAll('[data-tab-content]');

tabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const target = document.querySelector(tab.dataset.tabTarget);
        tabContents.forEach(tabContent => {
            tabContent.classList.remove('active');
        });
        tabs.forEach(tab => {
            tab.classList.remove('active');
        });
        tab.classList.add('active');
        target.classList.add('active');
    });
});

// function validateForm() {
//     var username = document.forms["login_form"]["username"].value;
//     var password = document.forms["login_form"]["password"].value;
//     if (username === "user" && password === "pass") {
//         return true;
//     } else {
//         alert("Username and password must be filled out");
//         return false;
//     }
// }

const topicTemplate = document.querySelector('[data-topic-template]');
const topicsContainer = document.querySelector('[data-topics]');
const publisherTemplate = document.querySelector('[data-publish-template]');
const publishersContainer = document.querySelector('[data-publishers]');
const articleTemplate = document.querySelector('[data-article-template]');
const articlesContainer = document.querySelector('[data-articles-container]');

const searchInput = document.querySelector('[data-search-input]');

let articles = [];

searchInput.addEventListener('keydown', (e) => {
    if (e.keyCode == 13) {
        const value = e.target.value;

        articles.forEach(article => {
            const isVisible = article.name.includes(value) ||
                article.summary.includes(value) ||
                article.publisher.includes(value);
            
            console.log(article.element)
            console.log(article.element.classList)
            article.element.classList.toggle('hide', !isVisible);
        })
    }
});

fetch("https://jsonplaceholder.typicode.com/users")
    .then(res => res.json())
    .then(data => {
        articles = data.map(user => {
            const topic = topicTemplate.content.cloneNode(true).children[0];
            topicsContainer.appendChild(topic);

            const news_org = publisherTemplate.content.cloneNode(true).children[0];
            publishersContainer.appendChild(news_org);

            const article = articleTemplate.content.cloneNode(true).children[0];
            const title = article.querySelector('[data-title]');
            const summary = article.querySelector('[data-summary]');
            const publisher = article.querySelector('[data-publisher]');

            title.textContent = user.name;
            summary.textContent = user.company.catchPhrase;
            publisher.textContent = user.company.name;

            articlesContainer.appendChild(article);

            return {
                name: user.name,
                summary: user.company.catchPhrase,
                publisher: user.company.name,
                element: article
            };
        })
    });