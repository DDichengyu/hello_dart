//decoding and encoding json,https://dart.dev/guides/libraries/library-tour#decoding-and-encoding-json
import 'dart:convert';

void main() {
  fun01();
  fun02();
  print('done');
}

void fun01() {
  var jsonString = '''
    [
      {"score": 40},
      {"score": 80}
    ]
  ''';

  var scores = jsonDecode(jsonString);
  assert(scores is List);

  var firstScore = scores[0];
  assert(firstScore is Map);
  assert(firstScore['score'] == 40);
}

void fun02() {
  var scores = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  var jsonText = jsonEncode(scores);
  assert(jsonText ==
      '[{"score":40},{"score":80},'
          '{"score":100,"overtime":true,'
          '"special_guest":null}]');
}
