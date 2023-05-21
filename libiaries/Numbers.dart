//Numbers,https://dart.dev/guides/libraries/library-tour#numbers

void main() {
  fun01();
  fun02();
  fun03();
  fun04();

  print("done");
}

//conver a string into an integer or doube weith parse()methods of int and double
void fun01() {
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
}

//method of num
void fun02() {
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
}

//specify the base of integer
void fun03() {
  assert(int.parse('42', radix: 16) == 66);
}

//convert an int or double to string
void fun04() {
  //Convert an int to a string.
  assert(42.toString() == '42');

  //Convert a double to a String.
  assert(123.456.toString() == '123.456');

  //Specify the number of digits after the decimal.
  assert(123.456.toStringAsFixed(2) == '123.46');

  //Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
}


