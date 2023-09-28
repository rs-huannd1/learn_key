import 'package:flutter/material.dart';

class LocalKeyWidget extends StatefulWidget {
  const LocalKeyWidget({super.key});

  @override
  State<LocalKeyWidget> createState() => _LocalKeyWidgetState();
}

class _LocalKeyWidgetState extends State<LocalKeyWidget> {
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              TextFormField(
                  // key: const ValueKey('value123'),
                  key: const ObjectKey('value')),
              TextFormField(
                  // key: UniqueKey(),
                  ),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            setState(() {
              print('onClick');
            });
          })),
    );
  }
}
