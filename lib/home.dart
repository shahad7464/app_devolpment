import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is S!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () {  },

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style:ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        '  S  ',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is M!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () {  },

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        'M',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is L!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () {},

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        'L',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is XL!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () {},

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        'XL',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is XXL!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () {},

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        'XXL',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(content: const Text('The Size is XXXL!'),
                          backgroundColor: (Colors.black),
                          action: SnackBarAction(label: 'close',onPressed: () { },

                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.amber;
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text(
                        'XXXL',
                        style: TextStyle(fontSize: 24),
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
}