import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_getx/main.dart';

class GetUnnamedRoute extends StatelessWidget {
  const GetUnnamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unnamed Routing",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Snackbar")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const HomeScreen(),
                  transition: Transition.circularReveal,
                  duration: const Duration(microseconds: 4000),
                  curve: Curves.bounceIn,
                );
              },
              child: const Text("Got To Home"),
            )
          ],
        )),
      ),
    );
  }
}

//  ^ HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          const Text("This is the Home Screen"),
          TextButton(
            onPressed: () {
              Get.to(
                const AboutScreen(),
                arguments: "Hello From Home",
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back),
                Text("GO TO About"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ^ ABOUT SCREEN
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
      ),
      body: Column(
        children: [
          const Text("This is the About Screen"),
          const Text("Followed bY"),
          Text("${Get.arguments}, "),
          TextButton(
            onPressed: () {
              Get.to(const HomeScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_forward),
                Text("GO TO Main"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
