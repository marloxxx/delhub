import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final Function press;
  const ForgotPassword({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press(),
          child: const Text(
            "Lupa Password?",
            style: TextStyle(
              color: Color(0xFF3C8DBC),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
