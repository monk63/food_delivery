import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:provider/provider.dart';

import 'themes/theme_provider.dart';

void main() {
  var create;
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
