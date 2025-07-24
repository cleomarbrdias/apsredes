import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../models/post.dart';

class PostDetailScreen extends StatelessWidget {
  final Post post;

  const PostDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voltar')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Html(data: post.content),
      ),
    );
  }
}
