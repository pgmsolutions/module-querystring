source(rpgm.pgmFilePath('modules/querystring/main.R'));

QueryString.fetch(function(params){
    gui.setValue(rpgm.step("example/main.pseq", "ui"), "params", paste(capture.output(str(params)), collapse = "\n"));
});