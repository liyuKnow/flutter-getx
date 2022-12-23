import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDialog extends StatelessWidget {
  const GetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
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
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.grey),
                    titlePadding: const EdgeInsets.all(4),
                    middleText: "Made In three Lines of Code",
                    middleTextStyle: const TextStyle(),
                    content: Row(
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text("Loading"),
                        )
                      ],
                    ),
                    textConfirm: "Login",
                    textCancel: "Back",
                    // You can also do confirm : widget or build your own content
                    //   content: Column(
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: const [
                    //           Text("Middle main content area"),
                    //           Divider(
                    //             height: 10,
                    //             color: Colors.grey,
                    //           ),
                    //         ],
                    //       ),
                    //       const SizedBox(
                    //         width: 4,
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Row(
                    //     children: const [
                    //       Icon(Icons.close),
                    //       Text("Cancel")
                    //     ],
                    //   ),
                    // ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Row(
                    //     children: const [
                    //       Icon(Icons.checklist),
                    //       Text("Add to list")
                    //     ],
                    //   ),
                    // ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.close),
                            Text("Cancel"),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.checklist),
                            Text("Add to list")
                          ],
                        ),
                      ),
                    ],
                    // Turn off outside dialog backdrop
                    // barrierDismissible: false,
                  );
                },
                child: const Text("Show Dialog"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
