import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 4.0,
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.date_range,
                          size: 18.0,
                          color: Colors.teal,
                        ),
                        Text(
                          "Current Date",
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                "Change",
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ],
          ),
        ),
        color: Colors.white,
        onPressed: () {
          print('Hello');
        },
      ),
    );
  }
}
