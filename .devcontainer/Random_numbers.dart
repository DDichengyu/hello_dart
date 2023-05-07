//Random numbers,https://dart.dev/guides/libraries/library-tour#stream
import 'dart:math';
void main() {
  fun01();
  print('done');
}

void fun01(){
  var random =new Random();
  random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
  random.nextInt(10); // Between 0 and 9.
  random.nextBool(); // true or false
}
