import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<int, String?> map = {
    1: null,
    2: null,
    3: null,
    4: null,
    5: null,
    6: null,
    7: null,
    8: null,
    9: null,
  };
  bool first = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Tic Tac Toe Game'),
          ),
          body: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Wrap(
                  children: map.entries
                      .map((e) => GestureDetector(
                            onTap: () {
                              if (first && map[e.key] == null) {
                                setState(() {
                                  map[e.key] = "X";
                                });
                              } else if (!first && map[e.key] == null) {
                                setState(() {
                                  map[e.key] = "0";
                                });
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              height: MediaQuery.sizeOf(context).height / 4,
                              width: MediaQuery.sizeOf(context).width / 4,
                            ),
                          ))
                      .toList(),
                )),
          )),
    );
  }
}
