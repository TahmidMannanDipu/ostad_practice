
import 'package:flutter/material.dart';
import '../../reuseable_widget/resuable_widget.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff68f64),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 150, 16, 0),
              child: ReusableWidget.iconWithText(context,
                  text: "Email Verification Code",
                  imagepath: "images/fingerprint"),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Enter the 5 digits code that we have sent \nthrough your E-mail",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "* Code is required",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: ReusableWidget.buildOTPbox(
                          context),
                    ),
                    const SizedBox(height: 250),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32),
                      child: ReusableWidget.buildTimer(
                        context,
                        time: "2:28",
                        imagePath: "images/clock_icon.png",
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ReusableWidget.buildButton(context, title: "Next"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}