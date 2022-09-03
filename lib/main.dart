import 'package:flutter/material.dart';
import 'package:toters_app/ui/detiles.dart';
import 'package:toters_app/ui/detilesfood.dart';
import 'package:toters_app/ui/homePge.dart';
import 'package:toters_app/ui/orderPage.dart';
import 'package:toters_app/ui/profile.dart';
import 'package:toters_app/ui/search.dart';
import 'package:toters_app/ui/splashScreen.dart';

import 'nav.dart';

void main() {
  runApp(MyApp());}


  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home:  Splash(),
  );
  }
  }

