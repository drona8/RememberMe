import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'example',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
