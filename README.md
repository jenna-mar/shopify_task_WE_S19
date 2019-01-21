# Shopify - Web Engineer Internship Challenge - S2019

### Description

Solution fulfils all listed requirements of the [Shopify - Summer 2019 - Web Engineer Internship Challenge](https://cdn.shopify.com/static/web-eng-challenge-summer-2019/index.md). Thus, it should be possible to search for waste items using the Toronto Waste Wizard database, and save frequently used ones.

A deployed instance is available to view and test [here](https://hidden-reef-86262.herokuapp.com).

##### Bonus

  * Styling leverages [Sassy CSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax) (rather than bare CSS3)

### Assumptions

Here, we require an exact match for the input search parameter. Thus, to match a given waste item, the input search value must be a substring of the object's "keywords" field value. 

Note that, by design, this is in contrast to behaviour implicit on the given [example mockup](https://cdn.shopify.com/static/web-eng-challenge-summer-2019/design.png) but strictly matches [listed requirements](https://cdn.shopify.com/static/web-eng-challenge-summer-2019/index.md). 

To illustrate this subtle difference, note that, per the provided [design](https://cdn.shopify.com/static/web-eng-challenge-summer-2019/design.png), the item titled "Blue Bin (plastic takeout food and produce containers)" had been selected for the search query "takeout". However, per the [listed requirements](https://cdn.shopify.com/static/web-eng-challenge-summer-2019/index.md), this item **would not** be selected since the query "takeout" should only match against the "keywords" field value. Although this waste item contains the string "takeout" in its "title" value, the "keywords" value in fact only contains "take out". By design, since we prefer not to lemmatize word variants in order to resolve white space, we instead simply match exact substrings against the "keywords" field value.

### Prerequisites

Programatically, the command-line environment for installation requires:

  * [Ruby (>= v2.3.1)](https://www.ruby-lang.org/en/documentation/installation/)

### Setup

From the project directory:

* Install required gems via `bundle install`
* Instantiate a local server instance of the application via `rails server`

### Usage

Our web app should now be available at [http://localhost:3000](http://localhost:3000).

From this web interface, it should be possible to search for waste items using the Toronto Waste Wizard database, and save frequently used ones.