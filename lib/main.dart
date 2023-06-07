import 'package:flutter/material.dart';
import 'package:post_api_data/app/Provider/PostProvider.dart';
import 'package:post_api_data/app/View/Home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Home_screen(),
        },
        theme: ThemeData.dark(),
      ),
    ),
  );
}
