// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:generated_routes/routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoutes,
      initialRoute: "/firstScreen",
    );
  }
}
