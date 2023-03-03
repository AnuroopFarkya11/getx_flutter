import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routes.dart';

import 'getx_helper/controller.dart';

void main() {
  Get.put<AppController>(AppController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass.routes,
    );
  }
}

// TODO
// Add a button on a screen
// Ontap change the color of the button
// also change the text present in a button

class HomePage extends GetView<AppController> {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          Scaffold(
            backgroundColor: controller.screenColor.value,
            body: Center(

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(
                    onPressed: () {
            controller.onTapChanged();
            },
                child: Obx(
                        () => Text('${controller.changedText.value}'))),


            ElevatedButton(onPressed: () {
                Get.toNamed(RoutesClass.getSecondScreen());

            }, child: Text("Next"))

            ],
          ),
    ),)
    ,
    );
  }
}
