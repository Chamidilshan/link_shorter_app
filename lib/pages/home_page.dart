import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('images/shorter.jpg',
          width: 300.0,
        ),
        Text(
          'A simple link but poerful tool',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6
        ),
      ],
    );
  }
}
