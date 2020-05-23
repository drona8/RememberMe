import 'package:MoneRekho/utils/static_data.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final Function setViewForIndex;
  BottomNavigationWidget(
    this.setViewForIndex,
  );
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void _bottomItemTapped(int tappedIndex) {
    setState(() {
      _selectedIndex = tappedIndex;
    });
    widget.setViewForIndex(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).bottomAppBarColor,      
      unselectedItemColor: Theme.of(context).scaffoldBackgroundColor,
      selectedItemColor: Theme.of(context).indicatorColor,
      currentIndex: _selectedIndex,
      iconSize: Theme.of(context).accentIconTheme.size,
      onTap: (int index) {
        _bottomItemTapped(index);
      },
      type: BottomNavigationBarType.fixed,
      items: [
        for (var item in StaticData.bottomAppBarItem)
          _buildBottomNavigationBarItem(item['text'], item['icon']),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String text, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      title: Text(text),
    );
  }
}
