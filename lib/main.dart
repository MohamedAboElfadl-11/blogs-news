import 'package:blogs/views/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Blogs());
}

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
