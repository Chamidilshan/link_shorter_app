import 'dart:io';

import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key, required this.links}) : super(key: key);

  final List<Link> links;

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'History Page',
      ),
    );
  }
}
