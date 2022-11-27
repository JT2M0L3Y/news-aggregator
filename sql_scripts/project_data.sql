/**
 * Course: CPSC 321 - Database Management Systems
 * Name: Jonathan Smoley
 * Assignment: Final Project
 * Last Modified: 11/21/2022
 */

-- INSERT data into the tables
INSERT INTO Topics VALUES ('news'), ('finance'), ('tech'), ('business'), ('gaming'), ('sport'), ('economics'), ('energy'), ('entertainment');

INSERT INTO Producer VALUES ('Tech Radar'), ('Business Insider'), ('NY Daily News'), ('Fox News'), ('Forbes Media LLC'), 
                            ('Yahoo'), ('NewYorker'), ('MSN'), ('Live Science'), ('Patch'), ('NY Post'), ('Hearst Digital Media'), 
                            ('BusinessWire'), ('SFGATE'), ('AdWeek'), ('GameSpot'), ('Reuters'), ('Mashable'), ('Upstract'),
                            ('Space'), ('USA Today'), ('Chron'), ('CBS News'), ('Washington Post'), ('Seeking Alpha'), ('AOL'),
                            ('IMDB'), ('Forbes'), ('Gannett'), ('WSJ'), ('Toms Guide'), ('CBS Sports');

INSERT INTO Users VALUES ( ('test'), (12345), ('test@mail.com'), ('TestName1'), ('TestName2') );

INSERT INTO Preferences VALUES ('test', 'IMDB'), ('test', 'CBS News');

INSERT INTO Articles VALUES 
        (
            (0),
            ("These Black Friday PC deals will make your new PC build cheaper than ever"),
            ("https://www.techradar.com/deals/these-black-friday-pc-deals-will-make-your-new-pc-build-cheaper-than-ever"),
            ("Tech Radar"),
            ("news"),
            ("Everything from graphics cards to RAM is getting discounted"),
            ('2022-11-21 22:02:13')
        ),
        (
            (1),
            ("EQS-News: Mila Resources to pushing ahead with existing plans"),
            ("https://markets.businessinsider.com/news/stocks/eqs-news-mila-resources-to-pushing-ahead-with-existing-plans-1031928563"),
            ("Business Insider"),
            ("finance"),
            ("EQS-News: Mila Resources PLC Mila Resources to pushing ahead with existing plans 21.11.2022 / 14:40 CET/CEST The issuer is so..."),
            ('2022-11-21 14:40:35')
        ),
        (
            (2),
            ("New York state walloped by massive snowstorm"),
            ("https://www.nydailynews.com/news/ny-new-york-buffalo-snow-storm-20221121-bz5kdhsg3jbe5nvyfetmxk25ky-photogallery.html"),
            ("NY Daily News"),
            ("news"),
            ("Parts of New York were hit with a massive snowstorm Friday, Nov. 18, 2022, and into the weekend, leaving many places struggling to get out from underneath. On Monday, Nov. 21, 2022, President Biden declared a federal state of emergency for 11 counties across New York, including Erie County, which is home to Buffalo. The storm dropped up to 80 inches of snow in some places."),
            ('2022-11-21 13:20:44')
        ),
        (
            (3),
            ("25 Walmart Black Friday deals you can shop now: TVs, AirPods, air fryers, and more"),
            ("https://www.techradar.com/deals/25-walmart-black-friday-deals-you-can-shop-now-tvs-airpods-air-fryers-and-more"),
            ("Tech Radar"),
            ("news"),
            ("Walmart's early Black Friday sale is live - see the 25 best deals"),
            ('2022-11-21 23:50:22')
        ),
        (
            (4),
            ("Fox News' 'All-American Tree Lighting' will kick off Christmas season on 'The Five'"),
            ("https://www.foxnews.com/media/fox-news-all-american-tree-lighting-kick-christmas-season-the-five"),
            ("Fox News"),
            ("news"),
            ("FOX's third-annual All-American Christmas tree will unveiled on Monday during 'The Five' outside the network's New York City headquarters at FOX Square."),
            ('2022-11-21 10:00:33')
        ),
        (
            (5),
            ("One of the best PS5 racing wheels for Gran Turismo 7 is 50% off for Black Friday"),
            ("https://www.techradar.com/deals/one-of-the-best-ps5-racing-wheels-for-gran-turismo-7-is-50-off-for-black-friday"),
            ("Tech Radar"),
            ("news"),
            ("Grab the Logitech G29 PS5 wheel at a massive discount"),
            ('2022-11-21 11:30:57')
        );

/*
        (
            "aff132fe8ab0a3b531ca7300ef28f8b3",
            "The best Black Friday Apple Watch deal is the Apple Watch SE on sale for just $149",
            "https://www.techradar.com/deals/the-best-black-friday-apple-watch-deal-is-the-apple-watch-se-on-sale-for-just-dollar149",
            "Tech Radar",
            "news",
            "Save big on the Apple Watch SE ahead of Black Friday",
            2022-11-22 00: 05: 22
        ),


        (
            "f34152507b09fc7bd4001d556c445a30",
            "EQS-News: Ondo InsurTech looking at 'absolutely huge opportunity' in the US",
            "https://markets.businessinsider.com/news/stocks/eqs-news-ondo-insurtech-looking-at-absolutely-huge-opportunity-in-the-us-1031928105",
            "businessinsider.com",
            "finance",
            "EQS-News: Ondo InsurTech PLC Ondo InsurTech looking at 'absolutely huge opportunity' in the US 21.11.2022 / 12:41 CET/CEST Th...",
            2022-11-21 12: 41: 23
        ),
        (
            "c8eca4def61e1dceb7fbeff8f380466d",
            "EQS-News: AdEPT Technology Group reintroduces interim dividend",
            "https://markets.businessinsider.com/news/stocks/eqs-news-adept-technology-group-reintroduces-interim-dividend-1031928035",
            "businessinsider.com",
            "finance",
            "EQS-News: AdEPT Technology Group PLC AdEPT Technology Group reintroduces interim dividend 21.11.2022 / 12:19 CET/CEST The iss...",
            2022-11-21 12: 19: 27
        ),
        (
            "8b069535ac5f74aa05bac725f44542a1",
            "Black Friday deals just dropped at Herchel's and everything is 30% off",
            "https://www.techradar.com/deals/black-friday-deals-just-dropped-at-herchels-and-everything-is-30-off",
            "techradar.com",
            "tech",
            "Take 30% off everything with Herschel's big Black Friday sale",
            2022-11-21 18: 58: 53
        ),
        (
            "2d2ead0277c6c25c4f7486fee4793c6a",
            "Our favorite budget gaming laptop is even cheaper thanks to this Black Friday deal",
            "https://www.techradar.com/deals/our-favorite-budget-gaming-laptop-is-even-cheaper-thanks-to-this-black-friday-deal",
            "techradar.com",
            "news",
            "An HP Victus 15 for under $500? Abso-frickin-lutely",
            2022-11-21 22: 39: 14
        ),
        (
            "27f4e960eb965395e0955415b861d87e",
            "Inside The 25th Anniversary Of The Samuel Waxman Cancer Research Foundation's Gala",
            "https://www.forbes.com/sites/nadjasayej/2022/11/21/inside-the-25th-anniversary-of-the-samuel-waxman-cancer-research-foundations-gala/",
            "Copyright 2022 Forbes Media LLC",
            "business",
            "The glitzy evening was attended by high society, fashionistas and Wall Street types who filled Cipriani Wall Street to raise $6 for cancer research.",
            2022-11-22 00: 14: 00
        ),
        (
            "96d98b6fefbae482e9d54b5933d1d7d5",
            "EQS-News: Poolbeg Pharma wins first non-dilutive grant funding",
            "https://markets.businessinsider.com/news/stocks/eqs-news-poolbeg-pharma-wins-first-non-dilutive-grant-funding-1031928080",
            "businessinsider.com",
            "finance",
            "EQS-News: Poolbeg Pharma PLC Poolbeg Pharma wins first non-dilutive grant funding 21.11.2022 / 12:35 CET/CEST The issuer is s...",
            2022-11-21 12: 35: 51
        ),
        (
            "c4763079d8ee90c3bb28c6537a797b97",
            "Black Friday fitness deals: Best live discounts on workout kit, watches & more",
            "https://www.techradar.com/deals/black-friday-fitness-deals-best-live-discounts-on-workout-kit-watches-and-more",
            "techradar.com",
            "news",
            "The Black Friday fitness deals are here",
            2022-11-17 14: 37: 59
        ),
        (
            "c299ea8257679b7452de5ba65815c517",
            "These Nintendo Switch game deals are among the cheapest ever this Black Friday",
            "https://www.techradar.com/deals/these-nintendo-switch-game-deals-are-among-the-cheapest-ever-this-black-friday",
            "techradar.com",
            "news",
            "Save big on the best Nintendo Switch games",
            2022-11-21 16: 56: 28
        ),
        (
            "09db9de92a2ec0034b056acfaafbce9d",
            "The best Turtle Beach gaming headset sees massive pre-Black Friday discount",
            "https://www.techradar.com/deals/the-best-turtle-beach-gaming-headset-sees-massive-pre-black-friday-discount",
            "techradar.com",
            "news",
            "Turtle Beach's gaming headset has never been cheaper",
            2022-11-18 14: 03: 50
        ),
        (
            "355e397bab26a1c7486dafb0617eab00",
            "These are the ridiculously cheap Black Friday earbuds I'd buy",
            "https://www.techradar.com/deals/these-are-the-ridiculously-cheap-black-friday-earbuds-id-buy",
            "techradar.com",
            "news",
            "Three options, all with ANC, all TechRadar reviewed and all super cheap for Black Friday!",
            2022-11-21 17: 33: 42
        ),
        (
            "73ad244150bedcb506eeebf62b593c5c",
            "The best Black Friday AirPods alternatives deals: great earbuds, no Apple logo",
            "https://www.techradar.com/deals/the-best-black-friday-airpods-alternatives-deals-great-earbuds-no-apple-logo",
            "techradar.com",
            "news",
            "Excellent AirPods alternatives, all discounted for Black Friday",
            2022-11-21 10: 10: 33
        ),
        (
            "e4e611edba184d0201c64d9b17f7b70e",
            "Early Black Friday deals: get one of our favorite Asus laptops for $500 off",
            "https://www.techradar.com/deals/early-black-friday-deals-get-one-of-our-favorite-asus-laptops-for-dollar500-off",
            "techradar.com",
            "news",
            "Want a thin-and-light gaming powerhouse? Check this Black Friday deal out.",
            2022-11-21 17: 26: 00
        ),
        (
            "b784daca5ce33235a8ea80fa025a5ec4",
            "Today's best Black Friday Apple deal is the AirPods 2 on sale for just $79.99",
            "https://www.techradar.com/deals/todays-best-black-friday-apple-deal-is-the-airpods-2-on-sale-for-just-dollar7999",
            "techradar.com",
            "news",
            "The AirPods 2 are down to a record-low price ahead of Black Friday",
            2022-11-21 17: 38: 09
        ),
        (
            "ac7e4a11ca4fd05b84db712c107cbe85",
            "New Mexico State basketball player was 'lured' to campus by four UNM students ahead of fatal shooting: police",
            "https://www.foxnews.com/sports/new-mexico-state-basketball-player-was-lured-campus-four-unm-students-ahead-fatal-shooting-police",
            "foxnews.com",
            "news",
            "The New Mexico State Police said Sunday that they believe New Mexico State forward Mike Peake was "lured" on to UNM campus by four students, one of whom was fatally shot by Peake.",
            2022-11-22 00: 20: 02
        ),
        (
            "ca21613815fa5dd92fe751f78b659bba",
            "Nintendo Switch OLED is down to a historic low price this Black Friday",
            "https://www.techradar.com/deals/nintendo-switch-oled-is-down-to-a-historic-low-price-this-black-friday",
            "techradar.com",
            "gaming",
            "The best Black Friday Nintendo Switch OLED deal ever?",
            2022-11-21 17: 18: 45
        ),
        (
            "f83351b4f9041663f67c0fda893dd4bf",
            "From the editor: Paxton Media Group to buy ENC newspapers, focus back on local journalism",
            "https://news.yahoo.com/editor-paxton-media-group-buy-100722956.html",
            "yahoo.com",
            "news",
            "Three eastern North Carolina newspapers will officially be under new ownership beginning Dec. 1 after being acquired by a family-owned company.",
            2022-11-21 10: 07: 22
        ),
        (
            "32ede7f9a236b762926132884998ad1f",
            "Bag 3 months free with IPVanish's killer Black Friday VPN deal",
            "https://www.techradar.com/news/bag-3-months-free-with-ipvanishs-killer-black-friday-vpn-deal",
            "techradar.com",
            "news",
            "The cheapest we've seen this top-flight VPN in a long time",
            2022-11-21 15: 46: 15
        ),
        (
            "4406cb0ccb2c9e983947ac769d295b88",
            "New Items Are on Sale All Week in The New Yorker Store",
            "https://www.newyorker.com/culture/on-and-off-the-avenue/new-yorker-store-holiday-sale-new-products-christmas",
            "newyorker.com",
            "news",
            "As the holiday season begins, enjoy discounts of up to thirty per cent on apparel and home goods for yourself and your loved ones.",
            2022-11-21 20: 07: 18
        ),
        (
            "0ec30f7fdbbad1bb987d87599366b863",
            "India vs New Zealand 2nd T20I live streaming: How to watch IND vs NZ cricket match live?",
            "https://www.msn.com/en-in/sports/other/india-vs-new-zealand-2nd-t20i-live-streaming-how-to-watch-ind-vs-nz-cricket-match-live/ar-AA14iDhy?ocid=sports-league-landing",
            "msn.com",
            "news",
            "India vs New Zealand 2nd T20I live streaming: How to watch IND vs NZ cricket match live?",
            2022-11-19 11: 41: 29
        ),
        (
            "d718b2708a608d54426da132c440b09b",
            "Save big on early Black Friday HP deals on the Envy x360, Pavilion PC, and more",
            "https://www.techradar.com/deals/save-big-with-hp-black-friday-deals-on-gaming-laptops-pcs-and-more",
            "techradar.com",
            "news",
            "These deals turn affordability into the ultimate budget machines",
            2022-11-21 19: 36: 18
        ),
        (
            "5ffc1e59ea270a6416b54e98fda8186b",
            "CBS News verifies Hunter Biden's scandalous laptop two years after dismissing it",
            "https://www.foxnews.com/media/cbs-news-verifies-hunter-bidens-scandalous-laptop-two-years-dismissing",
            "foxnews.com",
            "news",
            "CBS News became the latest corporate media organization to confirm the authenticity of Hunter Biden's scandal-plagued laptop, a far cry from the network's previous reporting.",
            2022-11-21 19: 53: 23
        ),
        (
            "985be085d5d36b8af5f29aa13de330f9",
            "This Oral-B iO Series 10 deal is the biggest Black Friday toothbrush discount yet",
            "https://www.techradar.com/deals/this-oral-b-io-series-10-deal-is-the-biggest-black-friday-toothbrush-discount-yet",
            "techradar.com",
            "tech",
            "Our best electric toothbrush has been given a staggering discount",
            2022-11-18 14: 18: 11
        ),
        (
            "a9a9a85acc23477d7804885632afd460",
            "Apple's MacBook Air gets a rare discount ahead of Black Friday",
            "https://www.techradar.com/deals/apples-macbook-air-gets-a-rare-discount-ahead-of-black-friday",
            "techradar.com",
            "news",
            "This is the best time to invest in a MacBook Air",
            2022-11-21 21: 36: 05
        ),
        (
            "563feda0bf90e6d554dbd246338bf2cc",
            "Black Friday supplement sale: Support your health for a fraction of the price",
            "https://www.livescience.com/black-friday-supplement-sale",
            "livescience.com",
            "news",
            "Black Friday is the perfect opportunity to stock up on your favorite supplements � without stretching the budget.",
            2022-11-21 16: 21: 51
        ),
        (
            "abebf88f3a3ce68e2a24948f7a81d072",
            "The best Black Friday Bluetooth speaker deals: portable, petite, party-ready",
            "https://www.techradar.com/deals/the-best-black-friday-bluetooth-speaker-deals-live-now-portable-petite-party-ready",
            "techradar.com",
            "news",
            "If we don't love it we don't list it � simple!",
            2022-11-19 11: 37: 16
        ),
        (
            "87d29d17c4c1f38372a410d55b3b8159",
            "The Xbox Series S is cheaper than it's ever been this Black Friday",
            "https://www.techradar.com/deals/the-xbox-series-s-is-cheaper-than-its-ever-been-this-black-friday",
            "techradar.com",
            "news",
            "Save big on the Xbox Series S",
            2022-11-21 12: 25: 00
        ),
        (
            "bd0c0faf6cb45d7694984d42e541674c",
            "FOX News Media to Host Third Annual 'All-American Tree Lighting' on Monday, November 21st",
            "https://finance.yahoo.com/news/fox-news-media-host-third-161600338.html",
            "yahoo.com",
            "news",
            "Christmas Tree Lighting to be Broadcast Live on 'The Five' Network to Partner with the Police Athletic League for Toy Drive Benefiting New York City's Youth NEW YORK",
            2022-11-17 16: 16: 00
        ),
        (
            "9cdba8ab19b717dd4ccc9bea864ac560",
            "Wow House: 16 Rollins Court In Merrimack, New Hampshire",
            "https://patch.com/new-hampshire/merrimack/wow-house-16-rollins-court-merrimack-new-hampshire",
            "patch.com",
            "news",
            "This late-1980s townhouse needs a little bit of elbow grease and updating.",
            2022-11-21 22: 27: 49
        ),
        (
            "551381ee8c73d292ad4be7952c517bdf",
            "The November New Moon In Sagittarius Is Bringing A Major Vibe Shift",
            "https://www.msn.com/en-us/lifestyle/lifestyle-buzz/the-november-new-moon-in-sagittarius-is-bringing-a-major-vibe-shift/ar-AA14lgZX?ocid=EMMX",
            "msn.com",
            "news",
            "The November new moon is finally on its way, and it's bringing the opportunity to kick back, have a little fun, and manifest the life you've been dreaming of.",
            2022-11-21 01: 10: 42
        ),
        (
            "753a6d312b624fe9498576b5ed29225c",
            "New Mexico-New Mexico State game postponed after fatal shooting reportedly involving NMSU player",
            "https://news.yahoo.com/new-mexico-new-mexico-state-game-postponed-after-fatal-shooting-reportedly-involving-nmsu-player-023508003.html",
            "yahoo.com",
            "news",
            "An altercation between a UNM and NMSU student reportedly resulted in both receiving gunshot wounds, with the UNM student pronounced dead at the scene.",
            2022-11-20 02: 35: 08
        ),
        (
            "a07b4853731d601c4107f92590d0bf55",
            "Is Publix Open on New Year's Day 2023?",
            "https://www.yahoo.com/lifestyle/publix-open-day-2023-032533794.html",
            "yahoo.com",
            "news",
            "We reached out to Publix customer service to find out their hours.",
            2022-11-17 03: 25: 33
        ),
        (
            "c27b7d9dd9d2607c95f08ab0b4e2545d",
            "One of the best Nintendo Switch headsets is cheaper than ever right now",
            "https://www.techradar.com/deals/one-of-the-best-nintendo-switch-headsets-is-cheaper-than-ever-right-now",
            "techradar.com",
            "news",
            "The HyperX Cloud Alpha headset sees a huge discount",
            2022-11-18 15: 51: 38
        ),
        (
            "76ae1dce3d9e5072b2388e9937f508bf",
            "Only in New York, kiddies",
            "https://nypost.com/2022/11/15/only-in-new-york-kiddies/",
            "nypost.com",
            "news",
            "We the New York Post are one of the USA's largest digital brands. We love New York so much we'd like New Yorkers to be safe when riding the subway.",
            2022-11-16 01: 17: 52
        ),
        (
            "404a0f65b6765c689ac125dfccbd944b",
            "47 Funniest New Year's Jokes for 2023",
            "https://www.goodhousekeeping.com/holidays/g30082216/best-new-years-jokes/",
            "2022 Hearst Digital Media",
            "news",
            "What does a ghost say on January 1st? Happy Boo Year!",
            2022-11-16 20: 09: 00
        ),
        (
            "d651bf19cb9dc8ac5238c66cf69c1267",
            "FOX News Digital Finishes October as Top-Performing News Brand in Multiplatform Minutes and Views",
            "https://www.businesswire.com/news/home/20221118005378/en/FOX-News-Digital-Finishes-October-as-Top-Performing-News-Brand-in-Multiplatform-Minutes-and-Views",
            "businesswire.com",
            "news",
            "FOX News Digital finished October 2022 as the top-performing news organization in the competitive set in both multiplatform minutes and multiplatform",
            2022-11-18 00: 00: 00
        ),
        (
            "70e5ad343aa5f0b1b79b05ae29d29610",
            "FOX News Media to Host Third Annual 'All-American Tree Lighting' on Monday, November 21st",
            "https://www.businesswire.com/news/home/20221117005886/en/FOX-News-Media-to-Host-Third-Annual-%E2%80%9CAll-American-Tree-Lighting%E2%80%9D-on-Monday-November-21st",
            "businesswire.com",
            "news",
            "FOX News Media will present its third annual 'All-American Tree Lighting' on Monday, November 21st at 5 PM/ET partnering with the Police Athletic Leag",
            2022-11-17 00: 00: 00
        ),
        (
            "340d05d973339396bc029426c9110e84",
            "New Orleans cocktail book shows city's elegant drink side",
            "https://news.yahoo.com/orleans-cocktail-book-shows-citys-134651949.html",
            "yahoo.com",
            "news",
            "If your idea of a New Orleans cocktail is a Kool-Aid colored, alcohol-heavy concoction served in a plastic hand grenade or a novelty glass resembling a hurricane lamp, stop thinking like a college�",
            2022-11-21 13: 46: 51
        ),
        (
            "d0e024bd2057df51c9b52bdd5ffce476",
            "UPDATE 1-FAA OKs new $4.2 billion terminal at New York's JFK airport",
            "https://finance.yahoo.com/news/1-faa-oks-4-2-172900878.html",
            "yahoo.com",
            "news",
            "(Adds more details, background on airport construction)By David ShepardsonWASHINGTON, Nov 17 (Reuters) - The Federal Aviation Administration (FAA) granted final environmental approval for construction�",
            2022-11-17 17: 29: 00
        ),
        (
            "6943f3494c6551aeec24ca5846c38b29",
            "New Jersey 5, Edmonton 2",
            "https://www.sfgate.com/sports/article/New-Jersey-5-Edmonton-2-17602612.php",
            "sfgate.com",
            "sport",
            "Edmonton",
            2022-11-22 02: 39: 54
        ),
        (
            "ba47069b17d0f9026167ddf77710fbd0",
            "Black Friday deals are set to make foldable phones go mainstream",
            "https://www.techradar.com/deals/black-friday-deals-are-set-to-make-foldable-phones-go-mainstream",
            "techradar.com",
            "news",
            "Are foldables finally hot?",
            2022-11-21 16: 42: 05
        ),
        (
            "df76c31413fadb50f82c837aa042eb32",
            "Duval School Board employee accused of sexual battery, Jacksonville Sheriff's Office says",
            "https://news.yahoo.com/duval-school-board-employee-accused-172552735.html",
            "yahoo.com",
            "news",
            "The Jacksonville Sheriff's Office said a Duval County School Board employee is accused of several counts of sexual battery.",
            2022-11-15 17: 25: 52
        ),
        (
            "95b308a503a598ef0b4e6f46a4aacd8d",
            "Freevee: What's Coming in December 2022",
            "https://www.adweek.com/lostremote/freevee-whats-coming-december-2022/68860",
            "adweek.com",
            "news",
            "TV shows include Everwood, In Plain Sight and Person of Interest.",
            2022-11-21 16: 03: 15
        ),
        (
            "c3ea6d622650d8ced8044df41c161ad7",
            "Twins reveal new uniforms in style at Mall of America",
            "https://news.yahoo.com/twins-reveal-uniforms-style-mall-010700113.html",
            "yahoo.com",
            "news",
            "Nov. 18 BLOOMINGTON: The Minnesota Twins have a new look for the 2023 season, and fans, front office members, and players gathered at the Mall of America on Friday to see the new design of the Twins�",
            2022-11-19 01: 07: 00
        ),
        (
            "49fa22ac9a1daaa48c6dd5390d525be3",
            "How to buy a really cheap Apple Watch on Black Friday",
            "https://www.techradar.com/how-to/how-to-buy-a-really-cheap-apple-watch-on-black-friday",
            "techradar.com",
            "news",
            "Want an Apple Watch? Here are a few easy guidelines to follow on Black Friday",
            2022-11-20 07: 00: 59
        ),
        (
            "54d794480af4481030cbe63dede44517",
            "This is the fastest-growing part of New York, according to data",
            "http://www.msn.com/en-us/money/realestate/this-is-the-fastest-growing-part-of-new-york-according-to-data/ss-AA149bSC",
            "msn.com",
            "economics",
            "Stacker compiled a list of the fastest growing counties in New York using data from the U.S. Census Bureau.",
            2022-11-16 01: 00: 00
        ),
        (
            "5ab183e15423bfc0f6185bf2a4506504",
            "NY Gov. Hochul: State police will bolster support for communities 'that are potential targets of hate crimes'",
            "https://www.foxnews.com/us/new-york-gov-hochul-state-police-bolster-support-communities-potential-targets-hate-crimes",
            "foxnews.com",
            "news",
            "New York's governor, following the Colorado LGBTQ nightclub shooting, says state police will bolster support for communities 'that are potential targets of hate crimes.'",
            2022-11-21 13: 12: 32
        ),
        (
            "d6a2e3aab4f101455552d7b419af9762",
            "This Black Friday deal brings Samsung's stunning projector to $599, a record-low price",
            "https://www.techradar.com/deals/this-black-friday-deal-brings-samsungs-stunning-projector-to-dollar599-a-record-low-price",
            "techradar.com",
            "news",
            "A nice price cut on The Freestyle portable",
            2022-11-21 23: 49: 14
        ),
        (
            "724f65e875e59d7a51f662dfbdcc637f",
            "New On Peacock In December 2022: The Real Housewives Of Miami Season 5, Baking It Season 2, The Goonies",
            "https://www.gamespot.com/articles/new-on-peacock-in-december-2022-the-real-housewives-of-miami-season-5-baking-it-season-2-the-goonies/1100-6509311/",
            "gamespot.com",
            "gaming",
            "Peacock's line-up is growing during December, including more movies, TV shows, and originals. Here's what you can start streaming next month.",
            2022-11-18 21: 45: 49
        ),
        (
            "bef762a1290f5ac524ffd51283ffbf34",
            "Investor Irenic asks News Corp to explore alternatives to combination with Fox",
            "https://www.reuters.com/business/media-telecom/investor-irenic-asks-news-corp-explore-alternatives-combination-with-fox-2022-11-21/",
            "reuters.com",
            "news",
            "Activist investor Irenic Capital Management, which has a $150 million stake in News Corp , sent a letter to the company, asking its special committee formed to evaluate a deal with Fox Corp to�",
            2022-11-21 13: 17: 28
        ),
        (
            "6736c3762bd5ad3028e92c41e8f80457",
            "This 400GB Nintendo Switch microSD card is a bargain ahead of Black Friday",
            "https://www.techradar.com/deals/this-400gb-nintendo-switch-microsd-card-is-a-bargain-ahead-of-black-friday",
            "techradar.com",
            "news",
            "Big storage and bigger savings",
            2022-11-18 17: 08: 43
        ),
        (
            "98bde5cedc7390995d68fda0716c3c63",
            "This full-frame bargain is the best Black Friday camera deal so far",
            "https://www.techradar.com/deals/this-full-frame-bargain-is-the-best-black-friday-camera-deal-so-far",
            "techradar.com",
            "news",
            "The Lumix S5 offers seriously impressive value right now",
            2022-11-18 12: 15: 38
        ),
        (
            "d7506025920b1efcb1b6883414aff7fe",
            "These Cyber Monday sex toy deals will have you buzzing with excitement",
            "https://mashable.com/deals/cyber-monday-sex-toy-deals",
            "mashable.com",
            "news",
            "Finally, some good sales on (sex) tech that'll actually make your life better.",
            2022-11-21 22: 09: 32
        ),
        (
            "d12552eb95f338b5e32e182a9bf7b9df",
            "Three Ways To Invigorate The News",
            "https://www.forbes.com/sites/roslynlayton/2022/11/21/three-ways-to-invigorate-the-news/",
            "upstract.com",
            "news",
            "News media is subject to supply and demand, like any market. There are many formats for news: radio, TV, print, newsletter, online etc. News is available from� #internet #vanalstyne #policy #fcc�",
            2022-11-21 20: 29: 19
        ),
        (
            "d3a5481eedc652c7ae39ee1af34b6b88",
            "Upgrade your dental routine with these electric toothbrush Black Friday deals",
            "https://www.livescience.com/electric-toothbrush-black-friday-deals",
            "livescience.com",
            "news",
            "Save over 50% on these electric toothbrush Black Friday deals and enjoy a deeper clean for less.",
            2022-11-18 12: 37: 47
        ),
        (
            "47b0fd729bb0db8b459e24ff20feb6a9",
            "Xbox Series S holiday price drop: save $50 and get ready for Starfield",
            "https://www.space.com/xbox-series-s-deal-save-50-dollars-for-the-holidays",
            "space.com",
            "gaming",
            "The Xbox Series S is on sale for $249.99 through Black Friday and the holidays, so you can pick one up before Starfield launches.",
            2022-11-18 18: 18: 12
        ),
        (
            "7b0f51253923886c6002c2ca7c049371",
            "CBS News returns to Twitter after brief hiatus",
            "http://www.msn.com/en-us/news/technology/cbs-news-returns-to-twitter-after-brief-hiatus/ar-AA14lxTC",
            "msn.com",
            "tech",
            "CBS News returned to Twitter Sunday, after suspending its own accounts on Friday in light of recent events.",
            2022-11-21 03: 45: 00
        ),
        (
            "1392ac76f03f3c63c1791a1f16bde257",
            "New Mexico State vs. New Mexico basketball game postponed after deadly campus shooting",
            "https://www.usatoday.com/story/sports/ncaab/2022/11/19/new-mexico-postpones-college-basketball-game-after-shooting-campus/10739094002/",
            "usatoday.com",
            "news",
            "Saturday's college basketball game between New Mexico and New Mexico State was postponed after a deadly shooting\u00a0on New Mexico's campus.",
            2022-11-19 22: 07: 01
        ),
        (
            "8df6ac40fa59350f0e8fe83369533df5",
            "New Jersey 5, Edmonton 2",
            "https://www.chron.com/sports/article/New-Jersey-5-Edmonton-2-17602612.php",
            "chron.com",
            "sport",
            "Edmonton",
            2022-11-22 02: 39: 54
        ),
        (
            "a9441160ea7a020394a52f00805fc393",
            "Black Friday starts now",
            "https://www.techradar.com/deals/black-friday-starts-now-33-best-early-deals-on-oled-tvs-airpods-instant-pot-and-more",
            "techradar.com",
            "news",
            "Early Black Friday deals on TVs, Apple Watch, Keurig, vacuums and more",
            2022-11-19 17: 41: 46
        ),
        (
            "3b593913114b472c156b7798db6077e9",
            "Sources: Man suspected of planning attack on New York City synagogue under arrest",
            "https://www.cbsnews.com/newyork/news/sources-man-suspected-of-planning-attack-on-new-york-city-synagogue-under-arrest/",
            "cbsnews.com",
            "news",
            "A law enforcement bulletin said the man, 22, was wanted after threats were made against unnamed synagogues in the New York area.",
            2022-11-19 17: 49: 56
        ),
        (
            "ac88a8e3df1fe6eba0feb083c44b8ecf",
            "Meta's best-ever Oculus Quest 2 deal is finally live for Black Friday",
            "https://www.techradar.com/news/metas-best-ever-oculus-quest-2-deal-is-finally-live-for-black-friday",
            "techradar.com",
            "news",
            "Get the VR headset and two free games while you can",
            2022-11-18 12: 49: 33
        ),
        (
            "d035e19a73a8d6aff56c56d58da18c1b",
            "New Orleans cocktail book shows city's elegant drink side",
            "https://www.washingtonpost.com/lifestyle/new-orleans-cocktail-book-shows-citys-elegant-drink-side/2022/11/21/3214fab8-69a3-11ed-8619-0b92f0565592_story.html",
            "washingtonpost.com",
            "news",
            "A new book from the owner of a New Orleans craft cocktail bar is showing readers an elegant look at cocktails in a city known for drinking excess",
            2022-11-21 13: 48: 36
        ),
        (
            "59b5f5c840606443e68c64f8ba74b83b",
            "Activist investor said to push against potential Fox deal with News Corp.(NASDAQ:NWSA)",
            "https://seekingalpha.com/news/3909894-activist-investor-said-to-push-against-potential-fox-deal-with-news-corp",
            "seekingalpha.com",
            "news",
            "Activist investor Irenic Capital Management is said to be against a potential Fox Corp. (FOXA) combination with News Corp",
            2022-11-21 01: 35: 29
        ),
        (
            "6f4ebbbb9da19c6bae11222771faee24",
            "Thousands participate in Race to Deliver 4M to benefit God's Love We Deliver in Central Park",
            "https://www.cbsnews.com/newyork/news/race-to-deliver-4m-to-benefit-gods-love-we-deliver-2022/",
            "cbsnews.com",
            "news",
            "The organization cooks and delivers tailored meals for people too sick to shop or cook for themselves.",
            2022-11-21 01: 13: 08
        ),
        (
            "470b14d8c76ef26a6c91a140d335b7b2",
            "The November New Moon in Sagittarius Will Have All 12 Zodiac Signs Feeling Lucky",
            "https://www.msn.com/en-us/lifestyle/horoscope/the-november-new-moon-in-sagittarius-will-have-all-12-zodiac-signs-feeling-lucky/ar-AA13T1ek?ocid=EMMX",
            "msn.com",
            "news",
            "Every month or so, the moon slides between the Earth and the sun, making it look almost invisible from our point of view.",
            2022-11-21 18: 54: 46
        ),
        (
            "acaecf996348f7c3ee627ddaa07caf8c",
            "The best Black Friday monitor deals: 2K performance at a 1080p price",
            "https://www.techradar.com/deals/black-friday-deals-for-the-best-monitors-2k-performance-at-a-1080p-price",
            "techradar.com",
            "news",
            "Huge monitor savings of up to $300 in these Black Friday deals",
            2022-11-20 16: 00: 00
        ),
        (
            "af741dcce0edc5abc1f722627115c135",
            "Irenic Sends Letter to News Corp's Special Committee Regarding the Need to Explore Value-Maximizing Alternatives to a Combination with Fox",
            "https://www.businesswire.com/news/home/20221121005319/en/Irenic-Sends-Letter-to-News-Corp%E2%80%99s-Special-Committee-Regarding-the-Need-to-Explore-Value-Maximizing-Alternatives-to-a-Combination-with-Fox",
            "businesswire.com",
            "news",
            "Irenic Capital Management, L.P. (together with its affiliates, 'Irenic' or 'we') today announced that it has sent the below letter to the Special Comm",
            2022-11-21 00: 00: 00
        ),


        (
            "14fa611f162b08f4546823ed8df3531a",
            "Miley Cyrus and Dolly Parton Tease New Year's Eve special",
            "https://www.today.com/popculture/tv/miley-cyrus-dolly-parton-new-years-eve-special-rcna58242",
            "AOL",
            "news",
            "This New Year's Eve is going to be 'legendary' because Miley Cyrus and Dolly Parton have paired up for 'Miley's New Year's Eve Party' on NBC.",
            2022-11-21 22: 44: 04
        ),
        (
            "54749d2f95e965b89aacba8d37c98903",
            "New Mexico State basketball game postponed after Aggie player reportedly involved in homicide",
            "https://www.foxnews.com/sports/new-mexico-state-basketball-game-postponed-aggie-player-reportedly-involved-homicide",
            "Fox News",
            "energy",
            "Saturday's men's basketball game between New Mexico State and New Mexico has been postponed after an Aggie was reportedly involved in a homicide Saturday morning.",
            2022-11-19 21: 53: 52
        ),
        (
            "331a6089c542fd6a86ab8fb2b3eb0475",
            "Multiple Headwinds Impacted The New York Times (NYT)'s Performance",
            "https://news.yahoo.com/multiple-headwinds-impacted-york-times-142711753.html",
            "Yahoo",
            "news",
            "Artisan Partners, an investment management company, released its 'Artisan Mid Cap Fund' third quarter 2022 investor letter. A copy of the same can be downloaded here.",
            2022-11-16 14: 27: 11
        ),
        (
            "bfc573137bf0c2234e2d0ee3cfb513f7",
            "Homeowner tied up, robbed in brazen New Jersey home invasion",
            "https://www.msn.com/en-us/news/us/homeowner-tied-up-robbed-in-brazen-new-jersey-home-invasion/ar-AA14eWNq?ocid=hplocalnews",
            "MSN",
            "news",
            "Homeowner tied up, robbed in brazen New Jersey home invasion",
            2022-11-17 21: 25: 32
        ),
        (
            "76f130e22a8943b2c468949f91d3981b",
            "Deals on Fitbits and other wearables are starting to pop off ahead of Black Friday and Cyber Monday",
            "https://mashable.com/deals/cyber-monday-fitbit-deals",
            "Mashable",
            "news",
            "Spoiler: The new Fitbit Sense 2 is already $100 off.",
            2022-11-16 19: 52: 31
        ),
        (
            "2d2ab580e6441c45c0b9ff619e70a95e",
            "Nvidia RTX 4090 GPU hits jaw-dropping 3.8GHz overclock to break a bunch of records",
            "https://www.techradar.com/news/nvidia-rtx-4090-gpu-hits-jaw-dropping-38ghz-overclock-to-break-a-bunch-of-records",
            "Tech Radar",
            "news",
            "Team OGS has pushed even further with the mighty Galax RTX 4090 HOF",
            2022-11-21 10: 59: 50
        ),
        (
            "62d79ba502a6e8b00346251ce3a527b3",
            "Armored vehicles arrive at an active scene in Jacksonville's Southside neighborhood",
            "https://news.yahoo.com/armored-vehicles-arrive-active-scene-163620953.html",
            "Yahoo",
            "news",
            "Armored trucks and SWAT have just arrived on scene at a neighborhood in Jacksonville's Southside.",
            2022-11-20 16: 36: 20
        ),
        (
            "db004edc05f88ddf08f0e9796c7634cc",
            "The best PS5 SSD just hit its lowest price ever for Black Friday",
            "https://www.techradar.com/news/the-best-ps5-ssd-just-hit-its-lowest-price-ever-for-black-friday",
            "Tech Radar",
            "news",
            "Storage and Oh No! More storage",
            2022-11-21 16: 16: 37
        ),
        (
            "d08abbd9f87797ee46446156d5dce7e0",
            "Anchors' Drunken On-Air New Year's Antics Subject of CNN Town Hall, Sobriety Now Encouraged",
            "https://www.imdb.com/news/ni63838693",
            "IMDB",
            "news",
            "IMDb, the world's most popular and authoritative source for movie, TV and celebrity content.",
            2022-11-16 21: 38: 03
        ),
        (
            "489545c1a43d5b2f4031ee9a17db62cc",
            "CBS News Suspends Use Of Twitter In Light Of The Uncertainty Surrounding Platform Under Musk",
            "https://www.forbes.com/sites/markjoyella/2022/11/19/cbs-news-suspends-all-activity-on-twitter-in-light-of-the-uncertainty-surrounding-platform-under-musk/",
            "Forbes",
            "news",
            "All but one of the network's owned-and-operated local stations have also suspended posting to Twitter.",
            2022-11-19 15: 24: 42
        ),
        (
            "fb974b4018625b6d108d9e6a721e41a9",
            "iPads, MacBooks, and chargers galore; check out these 20 deals for Apple lovers",
            "https://mashable.com/deals/nov-16-best-apple-tech-deals",
            "Mashable",
            "news",
            "Do you have an Apple obsessive on your holiday shopping list?",
            2022-11-16 14: 41: 34
        ),
        (
            "e4c43822a065c138f3bc5d0b9a80aade",
            "Prosecutors: Heavily armed men with swastika patch, ski mask arrested in threat to Manhattan synagogue",
            "https://www.usatoday.com/story/news/nation/2022/11/21/new-york-city-police-arrest-threat-manhattan-synagogue/10738622002/",
            "Gannett",
            "news",
            "Suspects accused of plotting attack against NYC Jewish community chargedChristopher Brown and Matthew Mahrer, the two suspects accused"
            + " of plotting an attack against New York City's Jewish community appeared in court after their arrest on Saturday. A potential tragedy"
            + " was averted in New York City on Saturday when police arrested two heavily armed men who allegedly intended to attack a Manhattan synagogue,"
            + " according to prosecutors.Metropolitan Transportation Authority officers arrested the two men at Penn Station.", 
            2022-11-21 17: 36: 02
        ),
        (
            "d968022983f927cddbb19a92fba50cfe",
            "The New Yorkers' Review: The Talk of the Town",
            "https://www.wsj.com/articles/the-new-yorkers-review-thetalk-of-the-town-11669072388",
            "WSJ",
            "news",
            "The four-century history of the World's Greatest City, told through the lives of 31 insufficiently famous inhabitants.",
            2022-11-21 23: 13: 00
        ),
        (
            "65712c10c77f5ad920d0195975d87f84",
            "PHOTOS: Tigers basketball beats New Orleans 91-62",
            "https://lsutigerswire.usatoday.com/gallery/lsu-basketball-photos-new-orleans-recap",
            "USA Today",
            "news",
            "LSU is 3-0 to start the Matt McMahon era.",
            2022-11-18 06: 00: 31
        ),
        (
            "55b8948b484293ba2fd3b8ff59ed5d93",
            "Three Ways To Invigorate The News In The US",
            "https://www.forbes.com/sites/roslynlayton/2022/11/21/three-ways-to-invigorate-the-news/",
            "Forbes Media LLC",
            "business",
            "For better news, media policy should harness market forces, not work against them.",
            2022-11-21 20: 29: 19
        ),
        (
            "ff66eda7a4764df914acd670752cacb7",
            "Midterm elections: Fox News' weekday primetime coverage tops NBC, ABC, CBS",
            "https://www.foxnews.com/media/midterm-elections-fox-news-weekday-primetime-coverage-tops-nbc-abc-cbs",
            "Fox News",
            "news",
            "Fox News averaged 4.1 million weekday primetime viewers during ongoing elections coverage from Nov. 7-11, outdrawing NBC, ABC and CBS during week of midterm elections.",
            2022-11-15 22: 47: 12
        ),
        (
            "17bbc2a0140ed4c6545fe2e3db84329d",
            "Xbox controller drops to historic low price ahead of Black Friday",
            "https://www.techradar.com/deals/xbox-controller-drops-to-historic-low-price-ahead-of-black-friday",
            "techradar.com",
            "news",
            "Grab this Xbox controller deal before it's gone",
            2022-11-18 12: 06: 13
        ),
        (
            "e1bd1b169fe137d7ce90cc12ea63fd0f",
            "NBCUniversal and Roku Expand News Coverage for The Roku Channel",
            "https://www.adweek.com/lostremote/nbcuniversal-roku-expand-news-coverage-roku-channel/68581",
            "AdWeek",
            "news",
            "Starting Tuesday, viewers will be able to watch four new Spanish-language regional news channels.",
            2022-11-15 16: 06: 32
        ),
        (
            "0569aab43606304a816bf590924aa93b",
            "Shop early and save $500 on a new Samsung gaming monitor and more",
            "https://www.techradar.com/deals/shop-early-and-save-dollar500-on-a-new-samsung-gaming-monitor-and-more",
            "Tech Radar",
            "news",
            "These gaming monitors are some of the best on the market",
            2022-11-20 14: 00: 00
        ),
        (
            "7a88d4a4739e5da56f59860314a70bed",
            "The newest AirPods Pro just hit their lowest price ever, plus more of the best deals to shop today",
            "https://mashable.com/article/best-deals-day-nov-21",
            "Mashable",
            "news",
            "T-minus four days until Black Friday",
            2022-11-21 16: 27: 21
        ),
        (
            "60a48679651165a1fb39034df409004d",
            "Apple Watch SE crashes to $149 at Walmart in early Black Friday deal",
            "https://www.tomsguide.com/deals/apple-watch-se-crashes-to-dollar149-at-walmart-in-early-black-friday-deal",
            "Toms Guide",
            "news",
            "Here's an Apple Watch deal worth shopping today",
            2022-11-21 15: 00: 25
        ),
        (
            "3b267e0dcb8fcf13113c5cc9028f788a",
            "New York City's first Major League Soccer stadium coming to Queens",
            "https://www.cbsnews.com/newyork/news/new-york-city-football-club-stadium-willets-point-queens/",
            "CBS News",
            "news",
            "The 25,000-seat stadium in Willets Point will be the new home of the New York City Football Club.",
            2022-11-16 03: 50: 12
        ),
        (
            "275bd4cd0edc9090dbf90ac011a53c8f",
            "New Inclusive Playground Opens At New Hyde Park Elementary School",
            "https://patch.com/new-york/newhydepark/new-inclusive-playground-opens-new-hyde-park-elementary-school",
            "Patch",
            "news",
            "Manor Oaks School's new playground was 'built to allow children of all ages and abilities to play together,' district says.",
            2022-11-17 16: 04: 41
        ),
        (
            "f5315c0f65207f53dff19f60d09ce649",
            "CBS News Temporarily Pauses Its Twitter Postings",
            "https://www.adweek.com/tvnewser/cbs-news-temporarily-pauses-its-twitter-postings/518962/",
            "AdWeek",
            "entertainment",
            "UPDATE (Sunday): 'After pausing for much of the weekend to assess the security concerns, CBS News and Stations is resuming its activity on Twitter as we continue to monitor the situation.'",
            2022-11-19 17: 58: 37
        ),
        (
            "614ab26c6963e3b247f49223b49f78a4",
            "Pelicans vs. Grizzlies live stream info, TV channel: How to watch NBA on TV, stream online",
            "https://www.cbssports.com/nba/news/pelicans-vs-grizzlies-live-stream-info-tv-channel-how-to-watch-nba-on-tv-stream-online-28930209/",
            "CBS Sports",
            "news",
            "How to watch Pelicans vs. Grizzlies basketball game",
            2022-11-15 20: 30: 30
        ),
        (
            "750c77b0170e7eaf0752b21b77a54dae",
            "Construction on Kennedy Airport's new $4.2 billion terminal to begin in 2023",
            "https://www.cbsnews.com/newyork/news/construction-on-kennedy-airports-new-4-2-billion-terminal-to-begin-in-2023/",
            "CBS News",
            "news",
            "The new terminal will feature touchless technology for passengers and state of the art security.",
            2022-11-18 02: 03: 00
        )
    );
*/

INSERT INTO ListItem VALUES ('test', 5);