/* API request & dynamic js for articles  */
const topicTemplate = document.querySelector('[data-topic-template]');
const topicsContainer = document.querySelector('[data-topics]');
const publisherTemplate = document.querySelector('[data-publish-template]');
const publishersContainer = document.querySelector('[data-publishers]');
const articleTemplate = document.querySelector('[data-article-template]');
const articlesContainer = document.querySelector('[data-articles-container]');
const listTemplate = document.querySelector('[data-list-template]');
const listContainer = document.querySelector('[data-list-container]');
const searchInput = document.querySelector('[data-search-input]');
const tabs = document.querySelectorAll('[data-tab-target]');
const tabContents = document.querySelectorAll('[data-tab-content]');

let articles = [];

const url = 'https://newsdata.io/api/1/news?language=en';
const key = 'pub_12841145b63adb79f8fb5cc26a075a97222a1';

fetch(url + '&apikey=' + key)
    .then(res => res.json())
    .then(data => {
        articles = data.results.map(news => {
            const article = articleTemplate.content.cloneNode(true).children[0];
            const title = article.querySelector('[data-title]');
            const summary = article.querySelector('[data-summary]');
            const publisher = article.querySelector('[data-publisher]');
            const link = article.querySelector('[data-link]');

            // create new article element
            title.textContent = news.title;
            summary.textContent = news.description;
            publisher.textContent = news.source_id;
            link.href = news.link;

            // event listeners for adding/removing individual articles
            const addThis = article.querySelector('[data-add-this]');
            addThis.addEventListener('click', () => {
                // if clicked, add new articles in list
                const newListing = listTemplate.content.cloneNode(true).children[0];
                const title = newListing.querySelector('[data-title]');
                const summary = newListing.querySelector('[data-summary]');
                const publisher = newListing.querySelector('[data-publisher]');
                const link = newListing.querySelector('[data-link]');
                title.textContent = news.title;
                summary.textContent = news.description;
                publisher.textContent = news.source_id;
                link.href = news.link;
                listContainer.appendChild(newListing);

                // add event listener to remove button
                const removeThis = newListing.querySelector('[data-remove-this]');
                removeThis.addEventListener('click', () => {
                    newListing.remove();
                });
            });

            articlesContainer.appendChild(article);

            // return set for search bar
            return {
                title: news.title,
                summary: news.description,
                publisher: news.source_id,
                element: article
            };
        });
    });

/* Upper-center search js to search for content */
searchInput.addEventListener('keydown', (e) => {
    if (e.keyCode == 13) {
        const value = e.target.value;

        articles.map(article => {
            let isVisible = false;

            if ((article.title != null && article.title.includes(value)) ||
                (article.summary != null && article.summary.includes(value)) ||
                (article.publisher != null && article.publisher.includes(value))) {
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

/*
const loginForm = document.querySelector('[data-login-form]');
const loginContainer = document.querySelector('[data-login]');
const registerButton = document.querySelector('[data-register-btn]');

loginForm.addEventListener('submit', (e) => {
    e.preventDefault();
    if (validateForm()) {
        window.location.href = "index.html";
    }
})

registerButton.addEventListener('click', () => { 
    loginContainer.classList.add('hide');
    registerContainer.classList.remove('hide');
});

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


const registerForm = document.querySelector('[data-register-form]');
const registerContainer = document.querySelector('[data-register]');
const loginButton = document.querySelector('[data-login-btn]');

registerForm.addEventListener('submit', (e) => {
    e.preventDefault();
    // if () {
    //     window.location.href = "index.html";
    // }
});

loginButton.addEventListener('click', () => { 
    registerContainer.classList.add('hide');
    loginContainer.classList.remove('hide');
});

*/
