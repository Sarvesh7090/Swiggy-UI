import 'package:flutter/material.dart';

Widget chip(String text) {
  return Chip(
    label: Text(text),
    backgroundColor: Colors.grey.shade200,
  );
}