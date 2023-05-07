//Sending and receiving real-time data with WebSockets,https://dart.dev/guides/libraries/library-tour#sending-and-receiving-real-time-data-with-websockets

void main() {
  initWebSocket();
  print('done');
}

void initWebSocket([int retrySeconds = 1]) {
  var reconnectScheduled = false;

  print('Connecting to websocket');

  void scheduleReconnect() {
    if (!reconnectScheduled) {
      Timer(Duration(seconds: retrySeconds),
          () => initWebSocket(retrySeconds * 2));
    }
    reconnectScheduled = true;
  }

  ws.onOpen.listen((e) {
    print('Connected');
    ws.send('Hello from Dart!');
  });

  ws.onClose.listen((e) {
    print('Websocket closed, retrying in $retrySeconds seconds');
    scheduleReconnect();
  });

  ws.onError.listen((e) {
    print('Error connecting to ws');
    scheduleReconnect();
  });

  ws.onMessage.listen((MessageEvent e) {
    print('Received message: ${e.data}');
  });
}