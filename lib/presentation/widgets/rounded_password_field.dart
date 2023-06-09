import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Color(0xFF3C8DBC),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xFFE5E5E5),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: Color(0xFFD1D1D1)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
