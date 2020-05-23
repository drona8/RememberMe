import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String placeHolder;
  final Function onSubmit;
  final Function onValidate;
  final IconData suffixIcon;
  final bool isObsceurText;
  final int maxLine;
  final TextEditingController controller;
  const TextFieldWidget({
    this.placeHolder,
    this.onSubmit,
    this.onValidate,
    this.suffixIcon,
    this.isObsceurText,
    this.maxLine,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: TextFormField(
        maxLines: maxLine ?? null,
        autofocus: false,
        controller: controller ?? null,
        readOnly: false,
        onTap: null,
        onChanged: null,
        validator: (String value) {
          onValidate(value);
        },
        onSaved: (String value) {
          onSubmit(value);
        },
        obscureText: isObsceurText ?? false,
        decoration: InputDecoration(
          labelText: placeHolder,
          suffixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              suffixIcon ?? null,
              color: Colors.blue,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 0,
            ),
          ),
        ),
      ),
    );
  }
}
