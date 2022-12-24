import 'package:flutter/material.dart';
import 'package:with_getx/src/bottomSheet/bottom_sheet.dart';
import 'package:with_getx/src/dialog/get_dialog.dart';
import 'package:with_getx/src/namedRoutes/named_routes.dart';
import 'package:with_getx/src/snackbar/get_snack.dart';
import 'package:with_getx/src/unnamedRoutes/unnamed_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetNamedRoute();
  }
}
