import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'pages/history_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List <Widget> pages = [
      MyHomePage(),
      HistoryPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Link Shorter'
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: pages[activePageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePageIndex,
        onTap: (value) {
          setState(() {
            activePageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
            activeIcon: Icon(Ionicons.home_outline),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.document_attach_outline),
            label: 'History',
            activeIcon: Icon(Ionicons.home_outline),
          ),
        ],
      ),
    );
  }
}

