import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetSnack extends StatelessWidget {
  const GetSnack({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
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
                  Get.snackbar(
                    "Snackbar title", "Snackbar Message or Content",
                    snackPosition: SnackPosition.BOTTOM,
                    // Icon
                    icon: const Icon(Icons.chat_bubble),
                    shouldIconPulse: false,
                    // Contents
                    titleText: const Text(
                      "Snackbar title",
                    ),
                    messageText: const Text(
                      "Snackbar Message or Content Snackbar Message or Content Snackbar Message or Content Snackbar Message or Content",
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 30,
                      left: 10,
                      right: 10,
                    ),
                    // Background
                    // backgroundColor: Colors.amber.shade300,
                    // backgroundGradient: const LinearGradient(
                    //   colors: [
                    //     Colors.indigoAccent,
                    //     Colors.blueAccent,
                    //     Colors.white54
                    //   ],
                    // ),
                    // Border
                    // borderWidth: 4,
                    // borderColor: Colors.pinkAccent,
                    // Shadow
                    // boxShadows: const [
                    //   BoxShadow(
                    //     color: Colors.yellow,
                    //     offset: Offset(10, 30),
                    //     spreadRadius: 20,
                    //     blurRadius: 8,
                    //   )
                    // ],
                    dismissDirection: DismissDirection.up,
                    duration: const Duration(milliseconds: 3000),
                    mainButton: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.refresh),
                            Text("Refresh"),
                          ],
                        )),
                    barBlur: 5,
                    overlayBlur: 5,
                    userInputForm: Form(
                      child: Column(children: const [
                        Text("User input:"),
                        TextField(
                          autofocus: true,
                        ),
                      ]),
                    ),
                  );
                },
                child: const Text("Show snackbar"))
          ],
        )),
      ),
    );
  }
}
