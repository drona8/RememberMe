import 'package:MoneRekho/model/todo_item_model.dart';
import 'package:MoneRekho/utils/utility.dart';
import 'package:MoneRekho/widgets/primitive/todo_item.dart';
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
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/data/sample_todo_item_data.json'),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.waiting) {
                List<TodoItemModel> todoItemList =
                    Utility.parseTodoItemListJSON(snapshot.data.toString());
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    for (TodoItemModel bean in todoItemList)
                      TodoItem(
                        title: bean.title,
                        subtitle: bean.subTitle,
                        timeLeft: bean.timeLeft,
                        day: bean.day,
                        monthYear: bean.monthYear,
                        time: bean.time,
                      ),
                  ],
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
