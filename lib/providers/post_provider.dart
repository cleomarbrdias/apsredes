import 'package:flutter/material.dart';
import '../models/post.dart';
import '../services/wordpress_service.dart';

class PostProvider extends ChangeNotifier {
  final WordPressService _service = WordPressService();
  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> loadPosts() async {
    _isLoading = true;
    notifyListeners();

    _posts = await _service.fetchLatestPosts();

    _isLoading = false;
    notifyListeners();
  }
}
