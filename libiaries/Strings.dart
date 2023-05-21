//Strings and regular expression,https://dart.dev/guides/libraries/library-tour#strings-and-regular-expressions

void main(List<String> args) {
  fun01();
  fun02();
  fun03();
  fun04();
  fun05();
  fun06();
  fun07();
  fun08();
  print('done.');
}

//Searching inside a String
void fun01() {
  //check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  //Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  //Find the location of a String inside a string.
  assert('never odd or even'.indexOf('odd') == 6);
}

//Extracting data from a string
void fun02() {
  //Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');

  //Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  //Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  //Use split() with an empty string parameter to get
  //a list of all characters (as Strings); good for iterating.
  for (final char in 'hello'.split(' ')) {
    print(char);
  }

  //Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or  even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
}

//Converting to uppercase or lowercase
void fun03() {
  //convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');

  //convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');
}

//Trimming and empty strings
void fun04() {
  //Trim a string.
  assert('  hello  '.trim() == 'hello');

  //Check whether a string is empty.
  assert(''.isEmpty);

  //Strings with only white space are not empty.
  assert('    '.isNotEmpty);
}

//replacing part od string
void fun05() {
  var greetingTemplate = 'Hello,NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

  //greetingTemplate didn't change.
  assert(greeting != greetingTemplate);
}

//building a string
void fun06() {
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');
}

//regular expressions
void fun07() {
  //Here's a regular expression for one more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  //contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  //replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, "XX");
  assert(exedOut == 'llamas live XX to XX years');
}

//work directly with the RegExp class
void fun08() {
  var numbers = RegExp(r'\d+');
  var someDigits = 'llamas live 15 to 20 years';

  //check whether the reg exp has a match in a string.
  assert(numbers.hasMatch(someDigits));

  //Loop through all matches.
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0));
  }
}
