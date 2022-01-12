// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:helloflutter/hello_flutter_widget.dart';
import 'package:helloflutter/language.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  const HelloFlutterApp({Key? key}) : super(key: key);

  @override
  State<HelloFlutterApp> createState() => _HelloFlutterAppState();
}

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  bool themeIsLight = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeIsLight ? ThemeData.light() : ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    themeIsLight = !themeIsLight;
                  });
                },
                icon: Icon(themeIsLight ? Icons.dark_mode : Icons.light_mode),
              ),
            ),
          ],
        ),
        body: ListView(
          children: HelloFlutter.allLanguages
              .map(
                (e) => HelloFlutterWidget(e),
              )
              .toList(),
        ),
      ),
    );
  }
}
