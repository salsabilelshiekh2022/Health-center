import 'package:el_amal_app/app/app.dart';
import 'package:el_amal_app/core/database/cache/cache_helper.dart';
import 'package:el_amal_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().appInitialization();
  runApp(const Elamal());
}
