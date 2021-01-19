import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: ThemeData.light(),
      home: TaskPage(),
    );
  }
}

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.menu),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 16, right: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Today',
                  style: TextStyle(fontSize: 48.0),
                ),
                Icon(Icons.add_circle_outline)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.call),
                title: Text('Conference Call'),
                subtitle: Text('Conference Call'),
                trailing: Icon(Icons.check_circle),
              ),
            ),
          )
        ],
      ),
    );
  }
}







