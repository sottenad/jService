Handlebars.registerHelper('json', function(context) {
    return JSON.stringify(context);
});
Handlebars.registerHelper('clean_time', function(context) {
    return moment(context).format("MMMM Do, YYYY");
});
