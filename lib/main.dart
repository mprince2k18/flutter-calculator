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
int pressKey = 0;
int operator = 0;
int pressEqual = 0;
int activity = 0;
double dresult = 0;

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15.0),
          ),
        ),
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
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '1';
                        value = value + '1';
                        print(value);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                        ),
                        color: Colors.red.shade700,
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '2';
                        value = value + '2';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade600,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '3';
                        value = value + '3';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade500,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                        ),
                        color: Colors.red.shade400,
                      ),

                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      alignment: Alignment.center,
                    ),
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      if (pressKey == 1 && operator == 0) {
                        setState(() {
                          operator = 1;
                          activity = 1;
                          input = input + '+';
                          value1 = int.parse(value);
                          value = '';
                          print(value1);
                        });
                      }
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
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '4';
                        value = value + '4';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade700,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '5';
                        value = value + '5';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade600,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '6';
                        value = value + '6';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '6',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade500,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      if (pressKey == 1 && operator == 0) {
                        setState(() {
                          activity = 2;
                          operator = 1;
                          input = input + '-';
                          value1 = int.parse(value);
                          value = '';
                          print(value1);
                        });
                      }
                    },
                    child: Container(
                      child: Text(
                        '-',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade400,
                      alignment: Alignment.center,
                    ),
                  ),
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
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '7';
                        value = value + '7';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '7',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade700,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '8';
                        value = value + '8';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '8',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade600,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '9';
                        value = value + '9';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '9',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade500,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      if (pressKey == 1 && operator == 0) {
                        setState(() {
                          activity = 3;
                          operator = 1;
                          input = input + 'X';
                          value1 = int.parse(value);
                          value = '';
                          print(value1);
                        });
                      }
                    },
                    child: Container(
                      child: Text(
                        '*',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade400,
                      alignment: Alignment.center,
                    ),
                  ),
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
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      setState(() {
                        pressKey = 1;
                        input = input + '0';
                        value = value + '0';
                        print(value);
                      });
                    },
                    child: Container(
                      child: Text(
                        '0',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade700,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        input = '';
                        value = '';
                        operator = 0;
                        pressEqual = 0;
                        pressKey = 0;
                        finalResult = '';
                      });
                    },
                    child: Container(
                      child: Text(
                        'C',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade600,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        pressEqual = 1;
                        value2 = int.parse(value);

                        switch (activity) {
                          case 1:
                            {
                              result = value1 + value2;
                              print(result);
                              finalResult = result.toString();
                            }
                            break;

                          case 2:
                            {
                              result = value1 - value2;
                              print(result);
                              finalResult = result.toString();
                            }
                            break;

                          case 3:
                            {
                              result = value1 * value2;
                              print(result);
                              finalResult = result.toString();
                            }
                            break;

                          case 4:
                            {
                              dresult = value1 / value2;
                              print(dresult);
                              finalResult = dresult.toString();
                            }
                            break;

                          default:
                            {
                              //statements;
                            }
                            break;
                        }
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
                  child: InkWell(
                    onTap: () {
                      if (pressEqual == 1) {
                        setState(() {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          finalResult = '';
                          print(input);
                        });
                      }

                      if (pressKey == 1 && operator == 0) {
                        setState(() {
                          activity = 4;
                          operator = 1;
                          input = input + '/';
                          value1 = int.parse(value);
                          value = '';
                          print(value1);
                        });
                      }
                    },
                    child: Container(
                      child: Text(
                        '/',
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                      color: Colors.red.shade400,
                      alignment: Alignment.center,
                    ),
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
