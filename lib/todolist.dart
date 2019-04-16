import 'package:flutter/material.dart';


class ToDoList extends StatefulWidget {
  @override
    State<StatefulWidget> createState() => new ToDoListState();
}
class ToDoListState extends State<ToDoList> {
 final _activities = new List<String>.generate(500, (i) => "Item $i");

 @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('To Do List'),
      ),
      body: _buildToDoLists(),
    );
  }

  Widget _buildToDoLists() {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(16.0),
      itemBuilder:  (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/2;
        if (index >= _activities.length) {
          return _buildRow(_activities[index]);
        }
      },
    );
  }
  Widget _buildRow(String pair) {
    return new ListTile(
      title: new Text(
        pair,
        style: const TextStyle(fontSize: 18.0),
      ),
    );
  }
}


