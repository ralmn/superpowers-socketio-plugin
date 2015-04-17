#Superpowers socket.io plugin

This plugin for [Superpowers, the extensible HTML5 2D+3D game engine](http://sparklinlabs.com) brings a socket.io client & server integration

Originally created by [Elisee](http://twitter.com/elisee)


## Installation

[Download the latest release](https://github.com/ralmn/superpowers-socketio-plugin/releases) and unzip it.

Rename the folder if you want then move it inside `app/plugins/ralmn/`.

Finally restart your server.

## Usage

### Server exemple script
```
var server = createServer()
var io = ioServer(server);
io.on('connection', function(socket){
  console.log('Hello socket')
  socket.on('msg', function(msg){
    console.log(msg);
    socket.emit('msg', msg + " server")
  })
});
console.log("Hello")
server.listen(8005, "127.0.0.1");
```
