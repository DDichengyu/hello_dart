//html,https://dart.dev/guides/libraries/library-tour#other-functionality
import 'dart:html';

void main() {
  fun01();
  print('done');
}

fun01(){
  // Find an element by id (an-id).
  Element idElement = querySelector('#an-id')!;

  // Find an element by class (a-class).
  Element classElement = querySelector('.a-class')!;

  // Find all elements by tag (<div>).
  List<Element> divElements = querySelectorAll('div');

  // Find all text inputs.
  List<Element> textInputElements = querySelectorAll(
    'input[type="text"]',
  );

  // Find all elements with the CSS class 'class'
  // inside of a <p> that is inside an element with
  // the ID 'id'.
  List<Element> specialParagraphElements = querySelectorAll('#id p.class');
  const osList = ['macos', 'windows', 'linux'];
  final userOs = determineUserOs();

  // For each possible OS...
  for (final os in osList) {
    // Matches user OS?
    bool shouldShow = (os == userOs);

    // Find all elements with class=os. For example, if
    // os == 'windows', call querySelectorAll('.windows')
    // to find all elements with the class "windows".
    // Note that '.$os' uses string interpolation.
    for (final elem in querySelectorAll('.$os')) {
      elem.hidden = !shouldShow; // Show or hide.
    }
  }
  String encodeMap(Map<String, String> data) => data.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');

  void main() async {
    const data = {'dart': 'fun', 'angular': 'productive'};

    var request = HttpRequest();
    request
      ..open('POST', url)
      ..setRequestHeader(
        'Content-type',
        'application/x-www-form-urlencoded',
      )
      ..send(encodeMap(data));

    await request.onLoadEnd.first;

    if (request.status == 200) {
      // Successful URL access...
    }
    // ···
  }
}