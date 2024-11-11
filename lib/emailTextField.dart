import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    this.onEditingComplete,
    this.keyboardType,
    this.initiaValue,
    this.controller,
    this.hintText,
    this.prefixIcon,
  });

  final void Function()? onEditingComplete;
  final TextInputType? keyboardType;
  final String? initiaValue;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      onEditingComplete: onEditingComplete,
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      initialValue: initiaValue,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter valid data";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        hintText: "Email",
        prefixIcon: Icon(Icons.email),
        isDense: true,
        contentPadding: EdgeInsets.all(6),
        hintStyle: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: .5),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
