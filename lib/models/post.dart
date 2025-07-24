class Post {
  final int id;
  final String title;
  final String excerpt;
  final String content;
  final String imageUrl;

  Post({
    required this.id,
    required this.title,
    required this.excerpt,
    required this.content,
    required this.imageUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    String imageUrl = '';

    try {
      imageUrl = json['featured_media_details']?['url'] ?? '';
      print(imageUrl);
    } catch (e) {
      print(' Erro ao buscar imagem: $e');
    }

    return Post(
      id: json['id'],
      title: json['title']['rendered'],
      excerpt: json['excerpt']['rendered'],
      content: json['content']['rendered'],
      imageUrl: imageUrl,
    );
  }
}
