import 'package:MoneRekho/widgets/primitive/button_widget.dart';
import 'package:MoneRekho/widgets/primitive/date_time_picker.dart';
import 'package:MoneRekho/widgets/primitive/text_field_widget.dart';
import 'package:flutter/material.dart';

class AddNewBodyWidget extends StatefulWidget {
  @override
  _AddNewBodyWidgetState createState() => _AddNewBodyWidgetState();
}

class _AddNewBodyWidgetState extends State<AddNewBodyWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _proceed() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    //Saving code
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              DateTimePicker(),
              SizedBox(
                height: 15.0,
              ),
              DateTimePicker(),
              SizedBox(
                height: 15.0,
              ),
              TextFieldWidget(
                placeHolder: "Title",
                onSubmit: _proceed,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFieldWidget(
                placeHolder: "Subtitle",
                onSubmit: _proceed,
                suffixIcon: Icons.title,
              ),
              SizedBox(
                height: 15.0,
              ),
              ButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
