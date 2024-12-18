import 'package:flutter/material.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',

        // Define the named routes
        routes: {
          '/': (context) => const GetStartedScreen(),
          '/signIn': (context) => LoginPage(),
          '/emailScreen': (context) => emailScreen(),
          '/passwordScreen': (context) => passwordScreen(),
          '/dateScreen': (context) => dateScreen(),
          '/genderScreen': (context) => genderScreen(),
          '/signUpScreen': (context) => singUpScreen(),
          // '/profile': (context) => ProfileScreen(),
        });
  }
}
