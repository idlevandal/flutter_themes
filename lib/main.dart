import 'package:flutter/material.dart';
import 'package:flutter_theme_app/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: AppTheme.lightTheme,
      // theme: ThemeData.dark(),
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
                  style: Theme.of(context).textTheme.headline3,
                ),
                Icon(Icons.add_circle_outline),
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
                leading: Icon(Icons.call, color: Theme.of(context).iconTheme.color),
                title: Text('Conference Call', style: Theme.of(context).textTheme.bodyText1,),
                subtitle: Text('30 mins', style: Theme.of(context).textTheme.bodyText2,),
                trailing: Icon(Icons.check_circle, color: Theme.of(context).colorScheme.primary),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button pushed..');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}







