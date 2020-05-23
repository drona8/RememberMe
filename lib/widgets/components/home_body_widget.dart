import 'package:MoneRekho/widgets/components/todo_item.dart';
import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
            ],
          ),
        ),
      ),
    );
  }
}
