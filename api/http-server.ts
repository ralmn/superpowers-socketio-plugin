/**
 Create server for socket.io server
 @return http server
**/
function createServer(){
  var http = require('http');
  return http.createServer()
}