.QueryString <- new.env(parent=emptyenv())
.QueryString$params <- NULL;
.QueryString$cb <- NULL;

QueryString.fetch <- function(cb){
    .QueryString$cb <<- cb;
    if(!is.null(.QueryString$params)){
        .QueryString$cb(.QueryString$params);
        .QueryString$cb = NULL;
    } else {
        rpgm.sendToJavascript('queryString/get');
    }
}
rpgm.on('didReceiveMessage', function(message, data){
    if(message == 'querystring'){
        .QueryString$params <<- data$query;
        if(!is.null(.QueryString$params) && !is.null(.QueryString$cb)){
            .QueryString$cb(.QueryString$params);
            .QueryString$cb = NULL;
        }
    }
});