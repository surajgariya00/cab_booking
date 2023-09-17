import 'package:flutter/material.dart';
import 'package:orbin/screen/clickhere_screen.dart';
import 'package:orbin/screen/google_map.dart';
import 'package:orbin/screen/login_screen.dart';
import 'package:orbin/screen/map_screen1.dart';
import 'package:orbin/screen/map_screen2.dart';
import 'package:orbin/screen/map_screen4.dart';
import 'package:orbin/screen/map_screen5.dart';
import 'package:orbin/screen/needhelp_screen.dart';
import 'package:orbin/screen/new_user_screen.dart';
import 'package:orbin/screen/otp_screen.dart';
import 'package:orbin/screen/practice.dart';
import 'package:orbin/screen/privacy_policy_screen.dart';
import 'package:orbin/widgets/custom_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => MapScreen5(),
        '/otp': (context) => OtpScreen(),
        '/newuser': (context) => NewUser(),
        '/needhelp': (context) => NeedHelp(),
        '/clickhere': (context) => ClickHere(),
        '/privacy&policy': (context) => PrivacyAndPolicy()
      },
    );
  }
}
