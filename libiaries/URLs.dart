//URIs,https://dart.dev/guides/libraries/library-tour#uris

void main() {
  fun01();
  fun02();
  fun03();
  fun04();
  fun05();
  print("done");
}

void fun01() {
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
}

void fun02() {
  void fun01() {
    var uri = 'https://example.org/api?foo=some message';

    var encoded = Uri.encodeFull(uri);
    assert(encoded == 'https://example.org/api?foo=some%20message');

    var decoded = Uri.decodeFull(encoded);
    assert(uri == decoded);
  }
}

void fun03() {
  var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri.scheme == 'https');
  assert(uri.host == 'example.org');
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'https://example.org:8080');
}

void fun04() {
  var uri = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri.toString() == 'https://example.org/foo/bar?lang=dart#frag');
}

void fun05() {
  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');
}
