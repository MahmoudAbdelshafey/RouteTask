import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Features/splash_view/presentation/view/splash_view.dart';

void main (){
  runApp(const RouteApp());
}

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
