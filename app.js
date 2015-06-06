
/**
 * Module dependencies.
 */

var iniparser = require('iniparser');
var config = iniparser.parseSync('config/init/db.ini');
var env = process.env.NODE_ENV || 'dev'; //startup nodejs with e.g:  NODE_ENV= node server.js

var express = require('express');
var http = require('http');
var path = require('path');
var app = express();

// database configuration
var mysql               = require('mysql');
var connectionsArray    = [];
var connection          = mysql.createConnection({
    host        : config[env]['host'],
    user        : config[env]['user'],
    password    : config[env]['pwd'],
    database    : config[env]['dbname']
}),
POLLING_INTERVAL = 3000,
pollingTimer;

// If there is an error connecting to the database
connection.connect(function(err) {
  // connected! (unless `err` is set)
  console.log( err );
});

// all environments
app.set('port', process.env.PORT || 5000);
app.set('views', __dirname + '/app_server/views');
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(express.cookieParser('your secret here'));
app.use(express.session());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// local scripts
app.locals.indexScripts = ['/javascripts/lib/jquery.min.js','/bootstrap/js/bootstrap.min.js','/javascripts/header-blur.js'];

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

require('./routes')(app);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});