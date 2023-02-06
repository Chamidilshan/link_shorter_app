import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyData(String url) async{
  final data = ClipboardData(text: url);
  await Clipboard.setData(data);
}