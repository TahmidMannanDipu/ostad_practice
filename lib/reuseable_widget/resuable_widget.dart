import 'package:flutter/material.dart';

class ReusableWidget {
  static Widget buildOTPbox(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
        );
      }),
    );
  }

  static Widget buildTimer(BuildContext context,
      {required String time, required String imagePath}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const SizedBox(width: 8),
        Text(
          time, // Reusable time string
          style: Theme.of(context)
              .textTheme
              .bodyMedium,
        ),
      ],
    );
  }

  static Widget iconWithText(BuildContext context,
      {required String text, required String imagepath}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          width: 35,
          child: Image.asset("images/fingerprint.png"),
        ),
        const SizedBox(width: 8),
        Text(
          "Email Verification Code",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  static Widget buildButton(BuildContext context, {required String title}) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          )),
    );
  }
}
