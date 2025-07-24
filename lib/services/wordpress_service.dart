import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class WordPressService {
  static const String _baseUrl = 'https://apsredes.org/wp-json/wp/v2';

  Future<List<Post>> fetchLatestPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts?_embed'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Erro ao carregar posts');
    }
  }
}
