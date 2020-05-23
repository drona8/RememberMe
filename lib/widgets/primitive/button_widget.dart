import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: () {},
          child: Text('Add Reminder'),
        ),
      ),
    );
  }
}
