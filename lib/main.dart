import 'package:flutter/material.dart';
import 'package:flutter_application_calendar/buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'S',
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 1, 22),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            child: IndexedStack(
              index: 1,
              children: [
                Placeholder(),
                Column(
                  children: <Widget>[
                    Container(
                      height: 86,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "OCTOBER",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            Text(
                              "2022",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 382,
                        child: GridView.builder(
                            itemCount: buttons.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 7),
                            itemBuilder: (BuildContext context, int index) {
                              return MyButton(
                                buttonText: buttons[index],
                                color: isOperator(buttons[index])
                                    ? Color.fromARGB(255, 8, 1, 22)
                                    : Color.fromARGB(255, 12, 22, 217),
                                textColor: isOperator(buttons[index])
                                    ? Colors.grey
                                    : Colors.white,
                              );
                            })),
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(255, 8, 1, 22),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == 'S' ||
        x == 'M' ||
        x == 'T' ||
        x == 'W' ||
        x == 'T' ||
        x == 'F' ||
        x == 'S') {
      return true;
    }
    return false;
  }
}
