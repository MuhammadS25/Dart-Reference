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

  // booleans
  bool isTrue = true; //true not 1
  isTrue = pi == 3.14; // true
  isTrue = pi == 3.14 ? true : false; // ternary operator

  // lists
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
  names.reversed; // reverse the list
  print(names.reversed);
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
  names.join(', '); // join the list values with a comma and space
  print(names);
  names.clear(); // remove all elements

  // maps
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
  myData.remove('address'); // remove a key and value
  print(myData);
  print(myData.keys); // get all keys
  print(myData.values); // get all values
  print(myData.entries); // get all keys and values
  myData.forEach((key, value) => print('$key: $value')); // loop through the map
  myData.update('name', (value) => 'Mo'); // update a value
  print(myData);
  myData.update('name', (value) => 'Mo',
      ifAbsent: () => 'Ahmed'); // update a value if the key exists
  print(myData);
  myData.clear(); // remove all keys and values

  // sets
  Set<String> mySet = {'Mo', 'Ahmed', 'Ali'};
  print(mySet);
  mySet.add('Ali'); // add a value
  print(mySet);
  mySet.remove('Ahmed'); // remove a value
  print(mySet);
  mySet.forEach((name) => print(name)); // loop through the set
  print(mySet.contains('Mo')); // check if the set contains a value
  print(mySet.length); // get the length of the set
  print(mySet.isEmpty); // check if the set is empty
  print(mySet.isNotEmpty); // check if the set is not empty
  mySet.clear(); // remove all elements

  // dynamic
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

  // var
  var myVar2 = 'Mo';
  print(myVar2);
  //myVar2 = 20; can't change the type once assigned
  print(myVar2);
}
