# QueryString module

The QueryString module is an R RPGM module for fetching the query string of the page URL for public links.

## Usage

- Download and unzip the content of this repository in a folder `modules/querystring` in your project ;
- Add a line `modules/querystring/main.js` in the **Custom JS/CSS files** entry in your project file ;
- Add the following R code somewhere in your project:

```r
QueryString.fetch(function(params){
    # Params is a list of key/value of the URL params
    # For example, http://myserver/a/mylink?p1=23&a=abc will have:
    # - params$p1 = 23
    # - params$a = "abc"
});
```