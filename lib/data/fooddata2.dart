class food1 {
  final String? Image;
  final String? title;
  final String? doc;
  final String? pric;
  final String? raat;

  food1({this.title, this.doc, this.Image, this.pric, this.raat});

  startsWith(String query) {}
}

final food11 = food1(
    Image: 'assets/images/real/hamburger.jpg',
    doc:
        'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
    title: 'Minute by tuk tuk',
    pric: '200',
    raat: '4.9');
final food12 = food1(
    Image: 'assets/images/real/hamburger2.jpg',
    doc: 'Fast food delivery to your home, office wherever you are',
    title: 'Café de Noir',
    pric: '120',
    raat: '4.9');
final food13 = food1(
    Image: 'assets/images/real/hamburger3.jpg',
    doc: 'Real time tracking of your food on the app once you placed the order',
    title: 'Bakes by Tella',
    pric: '140',
    raat: '4.9');

final Food1 = [food11, food12, food13];
