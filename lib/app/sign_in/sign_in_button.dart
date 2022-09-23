import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    Key? key,
    required String text,
    required Color color,
    Color textColor = Colors.black,
    required VoidCallback onPressed,
  })  : super(
          key: key,
          color: color,
          height: 40.0,
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
        );
}
