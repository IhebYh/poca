import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:poca/consts/app_theme.dart';
import 'package:poca/screens/SignUpScreens/signUpScreen.dart';
import 'package:poca/screens/SignUpScreens/dateScreen.dart';
import 'package:poca/screens/SignUpScreens/emailScreen.dart';
import 'package:poca/screens/SignUpScreens/genderScreen.dart';
import 'package:poca/screens/SignUpScreens/passwordScreen.dart';
import 'package:poca/screens/getStartedScreen.dart';
import 'package:poca/screens/singInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      // Define the named routes
      getPages: [
        GetPage(name: '/', page: () => const GetStartedScreen()),
        GetPage(name: '/signIn', page: () => LoginPage()),
        GetPage(name: '/emailScreen', page: () => emailScreen()),
        GetPage(name: '/passwordScreen', page: () => passwordScreen()),
        GetPage(name: '/dateScreen', page: () => dateScreen()),
        GetPage(name: '/genderScreen', page: () => genderScreen()),
        GetPage(name: '/signUpScreen', page: () => singUpScreen()),
        // Add any other screens here
      ],
    );
  }
}
