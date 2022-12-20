void main() {
  // numbers
  int age = 20; // real numbers
  double pi = 3.14; // fractional numbers
  //print pi with 3 decimal places
  print(pi.toStringAsFixed(3));

  // strings
  String name = 'Mo';
  print('Hello $name'); //accessing variables inside strings quotes
  // string interpolation using curly braces
  print(
      'Hello ${name.toUpperCase()}'); //accessing methods inside strings quotes
}
