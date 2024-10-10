import 'package:flutter/material.dart';
import 'package:ostad_class_practice/reuseable_widget/theme_data.dart';
import 'package:ostad_class_practice/ui/email_verification_page/email_verification_page.dart'; // Make sure to import this

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Email Verification",
      theme: myThemeData(),
      home: const EmailVerificationPage(),
    );
  }
}


