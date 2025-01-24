import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lifelens/screens/dashboard.dart';
import 'package:lifelens/screens/signup_screen.dart';
import 'package:lifelens/screens/otp_screen.dart';
import 'package:lifelens/screens/login_screen.dart';
import 'package:lifelens/screens/splash_screen.dart';

import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        Login.routeName: (context) => Login(),
        SignUp.routeName: (context) => SignUp(),
        OTP.routeName: (context) => const OTP( verificationID: '',),
        Dashboard.routeName: (context) => Dashboard(),

      },
    );
  }
}


