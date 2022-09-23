import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    Key? key,
    required String assetName,
    required String text,
    required Color color,
    Color textColor = Colors.black,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          color: color,
          height: 40.0,
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                'Sign in with Google',
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                  opacity: 0.0, child: Image.asset('images/google-logo.png')),
            ],
          ),
        );
}
