import 'package:flutter/material.dart';

void showsnackbar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
