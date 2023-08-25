import 'package:flutter/material.dart';
import 'package:flutter_localization/homepage/login.dart';
import 'package:flutter_localization/localization_service.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final localizationController = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        init: localizationController,
        builder: (LocalizationController controller) {
          return MaterialApp(
            title: 'Flutter Localization Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            locale: controller.currentLanguage != ''
                ? Locale(controller.currentLanguage, '')
                : null,
            localeResolutionCallback:
                LocalizationService.localeResolutionCallBack,
            supportedLocales: LocalizationService.supportedLocales,
            localizationsDelegates: LocalizationService.localizationsDelegate,
            home: MyHomePage(title: 'Flutter Localization'),
          );
        });
  }
}
