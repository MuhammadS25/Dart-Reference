import 'dart:io';

void main() {
  // numbers
  print('Numbers ----------------------------------');
  int age = 20; // real numbers
  double pi = 3.14; // fractional numbers
  //print pi with 3 decimal places
  print(pi.toStringAsFixed(3));
  //print pi with 3 decimal places and 2 leading zeros
  print('${pi.toString().padLeft(6, '0')}');
  //print pi with 2 trailing zeros
  print(pi.toString().padRight(6, '0'));
  //print pi with 2 leading and 2 trailing zeros
  print(pi
      .toString()
      .padLeft(6, '0')
      .padRight(8, '0')); //arguments are (desired length, character)
  //divide age by pi with integer division
  print(age ~/ pi);
  print('----------------------------------');

  // strings
  print('Strings ----------------------------------');
  String name = 'Mo';
  print('Hello $name'); //accessing variables inside strings quotes
  // string interpolation using curly braces
  print(
      'Hello ${name.toUpperCase()}'); //accessing methods inside strings quotes

  print('----------------------------------');

  // booleans
  print('Booleans ----------------------------------');
  bool isTrue = true; //true not 1
  isTrue = pi == 3.14; // true
  isTrue = pi == 3.14 ? true : false; // ternary operator
  print(isTrue);
  print('----------------------------------');

  // lists
  print('Lists ----------------------------------');
  List<String> names = ['Mo', 'Ahmed', 'Ali']; // fixed length
  names.add('Khaled'); // add to the end of the list
  print(names);
  names.insert(0, 'Mohamed'); // add to the beginning of the list
  print(names);
  names.removeAt(0); // remove from the beginning of the list
  print(names);
  names.removeLast(); // remove from the end of the list
  print(names);
  names[0]; // get the value of an index
  names[0] = 'Mo'; // set the value of an index
  names.remove('Ahmed'); // remove by value
  print(names.contains('Mo')); // check if the list contains a value
  print(names.indexOf('Mo')); // get the index of a value
  print(names.length); // get the length of the list
  print(names.isEmpty); // check if the list is empty
  print(names.isNotEmpty); // check if the list is not empty
  names.sort(); // sort the list
  print(names);
  print(names.reversed); // reverse the list
  names.forEach((name) => print(name)); // loop through the list
  names.map((name) => name.toUpperCase()).forEach(
      (name) => print(name)); // loop through the list and modify the values
  names.where((name) => name.startsWith('M')).forEach(
      (name) => print(name)); // loop through the list and filter the values
  print(names.any(
      (name) => name.startsWith('M'))); // check if any value starts with 'M'
  print(names.every(
      (name) => name.startsWith('M'))); // check if all values start with 'M'
  print(names.firstWhere((name) =>
      name.startsWith('M'))); // get the first value that starts with 'M'
  print(names.lastWhere((name) =>
      name.startsWith('M'))); // get the last value that starts with 'M'
  String joined =
      names.join(';'); // join the list values with a semicolon to a string
  print(joined);
  names.clear(); // remove all elements

  print('----------------------------------');

  // maps
  print('Maps ----------------------------------');
  Map<String, String> myData = {
    'name': 'Mo',
    'age': '20',
    'job': 'developer',
    'phone': '01554270415'
  };
  print(myData);
  print(myData['name']); // get the value of a key
  myData['name'] = 'Mohamed'; // set the value of a key
  myData['address'] = 'Cairo'; // add a new key and value
  myData.remove('phone'); // remove a key and value
  print(myData);
  print(myData.keys); // get all keys
  print(myData.values); // get all values
  print(myData.entries); // get all keys and values
  myData.forEach((key, value) => print('$key: $value')); // loop through the map
  myData.update('name', (value) => 'Mo'); // update a value
  print(myData);
  myData.update('name', (value) => 'MO',
      ifAbsent: () =>
          'MO'); // update a value if the key exists, otherwise add a new key and value
  print(myData);
  myData.clear(); // remove all keys and values

  print('----------------------------------');

  // sets
  print('Sets ----------------------------------');
  Set<String> mySet = {'Mo', 'Ahmed', 'Ali'};
  print(mySet);
  mySet.add('Aliou'); // add a value if it doesn't exist, otherwise do nothing
  print(mySet);
  mySet.remove('Ahmed'); // remove a value
  print(mySet);
  mySet.forEach((name) => print(name)); // loop through the set
  print(mySet.contains('Mo')); // check if the set contains a value
  print(mySet.length); // get the length of the set
  print(mySet.isEmpty); // check if the set is empty
  print(mySet.isNotEmpty); // check if the set is not empty
  mySet.clear(); // remove all elements

  print('----------------------------------');

  // dynamic
  print('Dynamic ----------------------------------');
  dynamic myVar = 'Mo';
  print(myVar);
  myVar = 20; // can change the type if already assigned
  print(myVar);
  myVar = true;
  print(myVar);
  myVar = 3.14;
  print(myVar);
  myVar = ['Mo', 'Ahmed', 'Ali'];
  print(myVar);

  print('----------------------------------');

  // var
  print('Var ----------------------------------');
  var myVar2 = 'Moo';
  print(myVar2);
  //myVar2 = 20; can't change the type once assigned
  print(myVar2);

  print('----------------------------------');

  // final --> run time constant(in case of receiving data from db or api or user input)
  print('Final ----------------------------------');
  final myVar3 = 'Mooo';
  print(myVar3);
  //myVar3 = 20; can't change the value

  print('----------------------------------');

  // const --> compile time constant(better performance than final when the value is known at compile time)
  print('Const ----------------------------------');
  const myVar4 = 'Moooo';
  print(myVar4);
  //myVar4 = 20; can't change the value

  print('----------------------------------');

  // Type test
  print('Type test ----------------------------------');
  print(myVar is List); // check if the variable is a list
  print(myVar is! List); // check if the variable is not a list

  print('----------------------------------');

  // Null aware operators
  print('Null aware operators ----------------------------------');
  var myName = null;
  print(myName
      ?.length); // if the variable is null, return null, otherwise return the value
  print(myName ?? 'Mo'); // if myName is null, print 'Mo'
  print(myName ??= 'Not Null'); // if myName is null, assign 'Mo' to it
  print(myName);

  print('----------------------------------');

  // switch case
  print('Switch case ----------------------------------');
  // get input from user
  var playerNum = stdin.readLineSync() as String;
  // convert the input to int
  int pNum = int.parse(playerNum);
  switch (pNum) {
    case 1:
      print('Goalkeeper');
      break;
    case 7:
      print('Siuuuu');
      break;
    case 10:
      print('Leo');
      break;
    default:
      print('Zizou is the best');
  }

  print('----------------------------------');

  reminder();
}

// functions
void reminder() {
  print('There\'s no God but ALLAH');
}
