//Decoding and encoding UTF-8 characters,,https://dart.dev/guides/libraries/library-tour#decoding-and-encoding-utf-8-characters
import 'dart:convert';
void main() {
  fun01();
  fun02();
  fun03();
  print('done');
}

void fun01(){
  List<int> utf8Bytes = [
    0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9,
    0x72, 0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3,
    0xae, 0xc3, 0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4,
    0xbc, 0xc3, 0xae, 0xc5, 0xbe, 0xc3, 0xa5, 0xc5,
    0xa3, 0xc3, 0xae, 0xe1, 0xbb, 0x9d, 0xc3, 0xb1
  ];

  var funnyWord = utf8.decode(utf8Bytes);

  assert(funnyWord == 'Îñţérñåţîöñåļîžåţîờñ');
}


Future<void> fun02() async {
  var inputStream; // Input stream variable needs to be defined

  var lines = utf8.decoder.bind(inputStream).transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('File is now closed');
  } catch (e) {
    print(e);
  }
}

void fun03() {




  List<int> utf8Bytes = [
    195, 140, 195, 177, 197, 163, 195, 169, 197, 161, 195, 182, 195, 166,
    195, 175, 197, 157, 195, 169, 195, 184, 197, 177
  ];
  var encoded = utf8.encode('Îñţérñåţîöñåļîžåţîờñ');

  assert(encoded.length == 'Îñţérñåţîöñåļîžåţîờñ'.length);
  for (int i = 0; i < encoded.length; i++) {
    assert(encoded[i] == utf8Bytes[i]);
  }
}