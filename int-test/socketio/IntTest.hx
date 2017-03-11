package socketio;

import js.node.Fs;
import js.node.Http;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;

import npm.socketio.Server;
import npm.socketio.Socket;

class IntTest {
  public static function main() {
    var server = Http.createServer(requestHandler);
    var io = new Server(server);

    io.on('connection', function(socket : Socket) : Void {
      socket.on('get-news', function() {
        socket.emit('news', 'Here is the news');
      });

      var roomId = 'special-room';

      socket.on('join-room', function() {
        trace('client requested to join room');
        socket.join(roomId, function(err) {
          io.in_(roomId).emit('joined-room', 'You have joined room: $roomId');
        });
      });

      socket.on('leave-room', function() {
        trace('client requested to leave room');
        io.in_(roomId).emit('greeting', 'Sorry to see you go!');
        socket.leave(roomId);
        socket.emit('left-room', 'You have left room: $roomId');
        io.in_(roomId).emit('greeting', 'You should not have gotten this');
      });

      socket.emit('greeting', 'Welcome!');
      io.in_(roomId).emit('greeting', 'You should not have gotten this');
    });

    var port = 3000;
    server.listen(port, function() {
      trace('server listening on $port');
    });
  }

  static function requestHandler(req : IncomingMessage, res : ServerResponse) : Void {
    Fs.readFile(js.Node.__dirname + "/../int-test/socketio/index.html", function(err, data) {
      if (err != null) {
        trace(err);
        res.writeHead(500);
        res.end('Error loading index.html');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
      }
    });
  }
}
