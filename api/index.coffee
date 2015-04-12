fs = require 'fs'
fix = 
"""
interface ArrayBufferView {}
declare var ArrayBufferView: {};

interface ArrayBuffer {}
declare var ArrayBuffer: {};

interface Uint8Array {}
declare var Uint8Array: {};

interface Int32Array {}
declare var Int32Array: {};

interface Float32Array {}
declare var Float32Array: {};
"""
SupAPI.registerPlugin('typescript', 'socket.io-client', {
  defs: fs.readFileSync(__dirname + '/../typings/socket.io-client/socket.io-client.d.ts', encoding: 'utf8')
});

SupAPI.registerPlugin('typescript-server', 'socket.io', {
  defs: fs.readFileSync(__dirname + '/../typings/socket.io/socket.io.d.ts', encoding: 'utf8')
});

SupAPI.registerPlugin('typescript-server', 'http-server', {
  code: fs.readFileSync(__dirname + '/http-server.ts', encoding: 'utf8')
  defs: fs.readFileSync(__dirname + '/http-server.d.ts', encoding: 'utf8')
});
