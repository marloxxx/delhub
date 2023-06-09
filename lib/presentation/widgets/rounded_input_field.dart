import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: const Color(0xFF3C8DBC),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFD1D1D1),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
