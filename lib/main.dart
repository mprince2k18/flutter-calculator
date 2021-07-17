import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

String input = '';
String value = '';
int value1 = 0;
int value2 = 0;
int result = 0;
String finalResult = '';

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
                      input,
                      style: TextStyle(fontSize: 42.0),
                    ),
                    Text(
                      finalResult,
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
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        input = input + '1';
                        value = value + '1';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade700,
                      alignment: Alignment.center,
                    ),
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
                  child: InkWell(
                    child: Container(
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade400,
                      alignment: Alignment.center,
                    ),
                    onTap: () {
                      setState(() {
                        input = input + '+';
                        value1 = int.parse(value);
                        value = '';
                        print(value1);
                      });
                    },
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
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        value2 = int.parse(value);
                        result = value1 + value2;
                        print(result);
                        finalResult = '=' + result.toString();
                      });
                    },
                    child: Container(
                      child: Text(
                        '=',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade500,
                      alignment: Alignment.center,
                    ),
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
