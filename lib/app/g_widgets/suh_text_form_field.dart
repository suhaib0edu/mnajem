import 'package:flutter/material.dart';

class SuhTextFormField extends StatelessWidget {
  const SuhTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'test',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 247, 252, 0),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
