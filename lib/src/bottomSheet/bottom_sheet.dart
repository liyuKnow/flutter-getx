import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetBottomSheet extends StatelessWidget {
  const GetBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Bottom Sheet")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // openDrawerSheet();
                  openThemeSheet();
                },
                child: const Text("Bottom Sheet"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void openDrawerSheet() {
    Get.bottomSheet(
      Column(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Bottom Sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Close'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  void openThemeSheet() {
    Get.bottomSheet(
      Wrap(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.wb_sunny_outlined),
            title: const Text("Light Theme"),
            onTap: () => {Get.changeTheme(ThemeData.dark())},
          ),
          ListTile(
            leading: const Icon(Icons.wb_sunny),
            title: const Text("Dark Theme"),
            onTap: () => {Get.changeTheme(ThemeData.dark())},
          ),
        ],
      ),
      isDismissible: true,
      isScrollControlled: true,
    );
  }
}
