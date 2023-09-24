import 'package:flutter/material.dart';

main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlutterScreen(),
    );
  }
}

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({Key? key}) : super(key: key);

  @override
  State<FlutterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<FlutterScreen> {
  int counter = 0;
  void incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  'Count:',
                  style: TextStyle(fontSize: 23,),
                ),
                Text(
                  counter.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter++;
                    if (counter >= 5 ) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Button pressed $counter times!!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 27,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (counter == 0) {
                      return;
                    } else {
                      counter--;
                    }

                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}