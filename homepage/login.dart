import 'package:flutter/material.dart';
import 'package:flutter_localization/homepage/singup.dart';
import 'package:flutter_localization/localization_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../t_key.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final localizationController = Get.find<LocalizationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TKeys.hello.translate(context),
              style: const TextStyle(fontSize: 42),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: TKeys.info.translate(context),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: TKeys.Password.translate(context),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Text(
              TKeys.info.translate(context),
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return signup();
                    },
                  ));
                },
                child: Text("signup")),
            ElevatedButton(
                onPressed: () {
                  localizationController.toggleLanguage();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(TKeys.changeLanguage.translate(context),
                      style: const TextStyle(fontSize: 18)),
                ))
          ],
        ),
      ),
    );
  }
}
