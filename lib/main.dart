import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme.dart';
import 'providers/post_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const APSRedeApp());
}

class APSRedeApp extends StatelessWidget {
  const APSRedeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PostProvider())],
      child: MaterialApp(
        title: 'APSREDE',
        theme: appTheme,
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
