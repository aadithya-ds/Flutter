class Book {
  final int id;
  final String title;
  final String author;

  Book({
    required this.id,
    required this.title,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as int,
      title: json['bookTitle'] as String,
      author: json['author'] as String,
    );
  }
}
