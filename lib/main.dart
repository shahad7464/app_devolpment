import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Profile',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Profile'),
        leading: Icon(
          Icons.adb_rounded,
          color: Colors.amber,
          size: 32,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('To register, tap on '),
            ],
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20, color: Colors.purple),
              children: [
                TextSpan(
                    text: 'Hello ', style: TextStyle(color: Colors.purple)),
                TextSpan(text: 'Name ', style: TextStyle(color: Colors.amber)),
                TextSpan(
                    text: 'Is skflds ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}