class food2 {
  final String? Image;
  final String? title;
  final String? doc;

  food2({this.title, this.doc, this.Image});

  startsWith(String query) {}
}

final food21 = food2(
    Image: 'assets/images/real/pizza.jpg',
    doc:
        'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
    title: 'Café De Bambaa');
final food22 = food2(
    Image: 'assets/images/real/pizza2.jpg',
    doc: 'Fast food delivery to your home, office wherever you are',
    title: 'Burger by Bella');

final Food2 = [
  food21,
  food22,
];
