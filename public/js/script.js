/* API request & dynamic js for articles  */
// let topicTemplate = document.querySelector('[data-topic-template]');
// let topicsContainer = document.querySelector('[data-topics]');
// let publisherTemplate = document.querySelector('[data-publish-template]');
// let publishersContainer = document.querySelector('[data-publishers]');

/* API request & populating articles page and adding listeners to populate list page */
let articleTemplate = document.querySelector('[data-article-template]');
let articlesContainer = document.querySelector('[data-articles-container]');
let listTemplate = document.querySelector('[data-list-template]');
let listContainer = document.querySelector('[data-list-container]');

const searchInput = document.querySelector('[data-search-input]');
const tabs = document.querySelectorAll('[data-tab-target]');
const tabContents = document.querySelectorAll('[data-tab-content]');

let articles = [];

let url = 'https://newsdata.io/api/1/news?language=en';
let key = 'pub_12841145b63adb79f8fb5cc26a075a97222a1';

/* API request */
fetch(url + '&apikey=' + key)
    .then(res => res.json())
    .then(data => {
        articles = data.results.map(news => {
            let article = articleTemplate.content.cloneNode(true).children[0];
            let title = article.querySelector('[data-title]');
            let summary = article.querySelector('[data-summary]');
            let publisher = article.querySelector('[data-publisher]');
            let link = article.querySelector('[data-link]');

            // create new article element
            title.textContent = news.title;
            summary.textContent = news.description;
            publisher.textContent = news.source_id;
            link.href = news.link;

            // event listeners for adding/removing individual articles
            let addThis = article.querySelector('[data-add-this]');
            addThis.addEventListener('click', () => {
                // if clicked, add new articles in list
                let newListing = listTemplate.content.cloneNode(true).children[0];
                let title = newListing.querySelector('[data-title]');
                let summary = newListing.querySelector('[data-summary]');
                let publisher = newListing.querySelector('[data-publisher]');
                let link = newListing.querySelector('[data-link]');
                title.textContent = news.title;
                summary.textContent = news.description;
                publisher.textContent = news.source_id;
                link.href = news.link;
                listContainer.appendChild(newListing);

                // add event listener to remove button
                let removeThis = newListing.querySelector('[data-remove-this]');
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

/* To search through articles returned by API request */
searchInput.addEventListener('keydown', (e) => {
    if (e.keyCode == 13) {
        let value = e.target.value;

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

/* progress made on inserting data from database */
$(document).ready(() => {
    /* Upper-right tabs js to switch pages */
    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            let target = document.querySelector(tab.dataset.tabTarget);
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

    let $articlesTab = $('#articles-tab');
    let $articlesContent = $('#articles');
    let $listTab = $('#list-tab');
    let $listContent = $('#list');

    $articlesTab.click(() => {
        $.ajax({
            url: '/articles',
            method: 'GET',
            data: { articles: articles },
            dataType: 'json'
        }).done((data) => {
            console.log(data.articles);

            // let article = articleTemplate.content.cloneNode(true).children[0];
            // let title = article.querySelector('[data-title]');
            // let summary = article.querySelector('[data-summary]');
            // let publisher = article.querySelector('[data-publisher]');
            // let link = article.querySelector('[data-link]');

            // // create new article element
            // title.textContent = data.articles.title;
            // summary.textContent = data.articles.description;
            // publisher.textContent = data.articles.publisher;
            // link.href = data.articles.url;

            // // event listeners for adding/removing individual articles
            // let addThis = article.querySelector('[data-add-this]');
            // addThis.addEventListener('click', () => {
            //     // if clicked, add new articles in list
            //     let newListing = listTemplate.content.cloneNode(true).children[0];
            //     let title = newListing.querySelector('[data-title]');
            //     let summary = newListing.querySelector('[data-summary]');
            //     let publisher = newListing.querySelector('[data-publisher]');
            //     let link = newListing.querySelector('[data-link]');
            //     title.textContent = data.articles.title;
            //     summary.textContent = data.articles.description;
            //     publisher.textContent = data.articles.publisher;
            //     link.href = data.articles.url;
            //     listContainer.appendChild(newListing);

            //     // add event listener to remove button
            //     let removeThis = newListing.querySelector('[data-remove-this]');
            //     removeThis.addEventListener('click', () => {
            //         newListing.remove();
            //     });
            // });

            // articlesContainer.appendChild(article);

            // // return set for search bar
            // return {
            //     title: news.title,
            //     summary: news.description,
            //     publisher: news.source_id,
            //     element: article
            // };
        })
    });

    $listTab.click(() => {
        $.ajax({
            url: '/list',
            method: 'GET',
            data: { list: list },
            dataType: 'json'
        }).done((data) => {
            console.log(data.list);
        })
    });
});
