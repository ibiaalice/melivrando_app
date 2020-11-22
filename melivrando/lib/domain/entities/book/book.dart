class Book {
  final String title;
  final String urlImage;
  final String status;

  Book(this.title, this.urlImage, this.status);

  String getTitle() {
    return this.title;
  }

  String getUrlImage() {
    return this.urlImage;
  }

  String getStatus() {
    return this.status;
  }
}
