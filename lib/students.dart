class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => (a[field] ?? '').compareTo(b[field] ?? ''));
  }

  void output() {
    for (var item in people) {
      print(item);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    people.removeWhere((item) => item.containsValue(field));
  }
}
