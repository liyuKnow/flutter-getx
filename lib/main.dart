import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_getx/src/dialog/get_dialog.dart';
import 'package:with_getx/src/snackbar/get_snack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetDialog();
  }
}
