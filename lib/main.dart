import 'package:flutter/material.dart';
import 'package:orbin/screen/setting.dart';
import 'package:orbin/map_screens/map_screen3.dart';
import 'package:orbin/map_screens/map_screen6.dart';
import 'package:orbin/screen/clickhere_screen.dart';
import 'package:orbin/screen/google_map.dart';
import 'package:orbin/screen/login_screen.dart';
import 'package:orbin/map_screens/map_screen1.dart';
import 'package:orbin/map_screens/map_screen2.dart';
import 'package:orbin/map_screens/map_screen4.dart';
import 'package:orbin/map_screens/map_screen5.dart';
import 'package:orbin/screen/needhelp_screen.dart';
import 'package:orbin/screen/new_user_screen.dart';
import 'package:orbin/screen/otp_screen.dart';
import 'package:orbin/screen/practice.dart';
import 'package:orbin/screen/privacy_policy_screen.dart';
import 'package:orbin/components/help_button.dart';
import 'package:orbin/components/primary_button.dart';

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
        '/': (context) => MapScreen4(),
        '/otp': (context) => OtpScreen(),
        '/newuser': (context) => NewUser(),
        '/needhelp': (context) => NeedHelp(),
        '/clickhere': (context) => ClickHere(),
        '/privacy&policy': (context) => PrivacyAndPolicy(),
        '/mapscreen1': (context) => MapScreen1(),
        '/mapscreen2': (context) => MapScreen2(),
        '/mapscreen3': (context) => MapScreen3(),
        '/mapscreen4': (context) => MapScreen4(),
        '/mapscreen5': (context) => MapScreen5(),
        '/mapscreen6': (context) => MapScreen6(),
        '/help': (context) => HelpScreen(),
        '/setting': (context) => SettingScreen()
      },
    );
  }
}
