source("modules/querystring/main.R")

QueryString.fetch(function(params){
    print(params);
    debug_str <- paste(capture.output(str(params)), collapse = "\n")
    gui.setValue(rpgm.step("main.pseq", "ui"), "params", debug_str)
    # Params is a list of key/value of the URL params
    # For example, http://myserver/a/mylink?p1=23&a=abc will have:
    # - params$p1 = 23
    # - params$a = "abc"
});