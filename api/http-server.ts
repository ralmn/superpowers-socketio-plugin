/// < reference path="../typings/node/node.d.ts">

/**
 Create server for socket.io server
 @return http server
**/
function createServer(){
  var http = require('http');
  return http.createServer()
}