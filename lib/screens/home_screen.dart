import 'package:MoneRekho/widgets/components/add_new_body_widget.dart';
import 'package:MoneRekho/widgets/components/bottom_navigation_widget.dart';
import 'package:MoneRekho/widgets/components/history_body_widget.dart';
import 'package:MoneRekho/widgets/components/home_body_widget.dart';
import 'package:MoneRekho/widgets/components/settings_body_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _curreentIndex;

  @override
  void initState() {
    super.initState();
    _curreentIndex = 0;
  }

  void resolveBodyIndex(int index) {
    setState(() {
      _curreentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text('Remember'),
        centerTitle: true,
        elevation: Theme.of(context).appBarTheme.elevation,
        backgroundColor: Theme.of(context).appBarTheme.color,
        leading: Icon(Icons.account_box),
      ),
      body: _resolveBody(_curreentIndex),
      bottomNavigationBar: BottomNavigationWidget(resolveBodyIndex),
    );
  }

  Widget _resolveBody(int index) {
    switch (index) {
      case 0:
        return HomeBodyWidget();
        break;
      case 1:
        return AddNewBodyWidget();
        break;
      case 2:
        return HistoryBodyWidget();
        break;
      case 3:
        return SettingsBodyWidget();
        break;
      default:
        return HomeBodyWidget();
    }
  }
}
