library double_dogs_email_text_field;

import 'package:double_dogs_email_text_field/emailTextField.dart';
import 'package:flutter/widgets.dart';

class DoubleDogsEmailTextField extends StatefulWidget {
  const DoubleDogsEmailTextField({super.key});

  @override
  State<DoubleDogsEmailTextField> createState() =>
      _DoubleDogsEmailTextFieldState();
}

class _DoubleDogsEmailTextFieldState extends State<DoubleDogsEmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: EmailTextField(),
    );
  }
}
