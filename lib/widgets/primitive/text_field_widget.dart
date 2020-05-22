import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
      child: TextFormField(
        maxLines: null,
        autofocus: false,
        controller: null,
        readOnly: false,
        onTap: null,
        onChanged: null,
        validator: (String value) {
          //todo
        },
        onSaved: (String value) {
          //todo
        },
        obscureText: false,
        decoration: InputDecoration(
          labelText: null,
          suffixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              null,
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