# QueryString module

The QueryString module is an R RPGM module for fetching the query string of the page URL for public links.

## Usage

- [Download the latest release](https://github.com/pgmsolutions/module-querystring/releases/latest/download/module-querystring.zip) and unzip its content in the folder `modules/querystring` in your project ;
- Add a line `modules/querystring/main.js` in the **Custom JS/CSS files** entry in your project file ;
- Add the following R code somewhere in your project:

```r
source(rpgm.pgmFilePath('modules/querystring/main.R'));

QueryString.fetch(function(params){
    # Params is a list of key/value of the URL params
    # For example, http://myserver/a/mylink?p1=23&a=abc will have:
    # - params$p1 = 23
    # - params$a = "abc"
});
```

> [!WARNING]  
> Please note that the function will not be called until a user connect to the link. Also note that **only the first time the user will enter the instance** will work.