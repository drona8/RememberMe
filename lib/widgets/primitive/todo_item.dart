import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String timeLeft;
  final String day;
  final String monthYear;
  final String time;
  const TodoItem({
    this.title,
    this.subtitle,
    this.timeLeft,
    this.day,
    this.monthYear,
    this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardTheme.color,
      elevation: Theme.of(context).cardTheme.elevation,
      shadowColor: Theme.of(context).cardTheme.shadowColor,
      borderOnForeground: true,
      shape: Theme.of(context).cardTheme.shape,
      margin: EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                title ?? 'No title',
                style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Text(
                subtitle ?? 'No Subtitle',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              dense: true,
              enabled: true,
              leading: Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(1.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      day ?? "00",
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      monthYear ?? "error",
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      time ?? "boom",
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              trailing: Column(
                children: <Widget>[
                  Expanded(
                    child: Text(timeLeft ?? 'Unknown'),
                  ),
                  Icon(
                    Icons.delete,
                    size: Theme.of(context).accentIconTheme.size,
                    color: Theme.of(context).accentIconTheme.color,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
