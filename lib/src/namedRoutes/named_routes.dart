import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:with_getx/main.dart';

class GetNamedRoute extends StatelessWidget {
  const GetNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Named Routing",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/home", page: () => const HomeScreen()),
        GetPage(name: "/about", page: () => const AboutScreen()),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Named Routes"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    "/home/:userId",
                  );
                },
                child: const Text(
                  "Go To Home",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    "/about?channel=Ripples&content=Flutter Named Routes",
                  );
                },
                child: const Text("Go To About"),
              )
            ],
          ),
        ),
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
          Text("Channel = ${Get.parameters['channel']}"),
          Text("Content = ${Get.parameters['content']}"),
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
