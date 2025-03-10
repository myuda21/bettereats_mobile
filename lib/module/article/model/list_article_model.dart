class Article {
  final String title;
  final String description;
  final String date;
  final String? imageUrl;

  Article({
    required this.title,
    required this.description,
    required this.date,
    this.imageUrl,
  });
}