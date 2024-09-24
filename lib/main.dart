import 'package:assessment/Controller/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Views/home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => postProvider()),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Assesment",
    home: HomeScreen(),
    ),
    );
  }
}


