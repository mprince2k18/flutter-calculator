import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: 24.0, color: Colors.white70),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade400,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '24+2  ',
                      style: TextStyle(fontSize: 42.0),
                    ),
                    Text(
                      '= 26  ',
                      style: TextStyle(fontSize: 48.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade700,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade600,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade500,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade400,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade700,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade600,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade500,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade400,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade700,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '8',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade600,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '9',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade500,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '*',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade400,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      '0',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade700,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade600,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '=',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade500,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '/',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                    color: Colors.red.shade400,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}