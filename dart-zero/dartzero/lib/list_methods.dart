void listMethods() {
  print('\n==== SOME LIST METHODS ====\n');

  List<String> list = ['Thor', 'Odin', 'Baldr', 'Freya'];

  List<String> sublist = list.sublist(0, 2);
  print(sublist);

  list.forEach((element) {
    print(element.toUpperCase());
  });

  print('Is Thor in this list? ${list.contains('Thor')}');

  List<int> numbers = [10, 20, 30, 40];

  int sum = numbers.reduce(((value, element) => value + element));
  print(sum);

  String odinSon =
      sublist.reduce((value, element) => value + ' is a son of ' + element);
  print(odinSon);

  // Where uses test cases.
  // Where does not return a list, it returns a iterable. See below
  Iterable biggerNames = list.where((element) => element.length > 4);
  print(biggerNames.toList());
}
