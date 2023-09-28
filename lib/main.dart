import 'package:flutter/material.dart';
import 'package:learn_key/How_to_use_key_correctly/global_key_null.dart';
import 'package:learn_key/How_to_use_key_correctly/local_key_widget.dart';
import 'package:learn_key/How_to_use_key_correctly/other_way_use_global_object_key.dart';
import 'package:learn_key/When_should_Key_be_used/access_to_widget.dart';
import 'package:learn_key/When_should_Key_be_used/animate_widget.dart';
import 'package:learn_key/When_should_Key_be_used/preserve_the_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                // key: const ValueKey('key123'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccessWidget())),
                child: Container(
                  // Duplicate Key Errors
                  // key: const GlobalObjectKey('textKey'),

                  // key: const ValueKey('key123'),
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text(
                    'Access to Widget',
                  ),
                ),
              ),
              GestureDetector(
                // key: const ValueKey('key123'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimateWidget())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Animate Widget'),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PreserveTheState())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Peserve the state'),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GlobalKeyNull())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Globalkey null!'),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const OtherWayUseGlobalOjectKey())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text(
                    'Other way use GlobalOjectKey',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocalKeyWidget())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Local Key'),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WidgetMovingExample())),
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text('Local Key'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class WidgetMovingExample extends StatefulWidget {
  @override
  _WidgetMovingExampleState createState() => _WidgetMovingExampleState();
}

class _WidgetMovingExampleState extends State<WidgetMovingExample> {
  final GlobalKey<_MyWidgetState> myWidgetKey = GlobalKey();

  double topPosition = 100.0;
  double leftPosition = 50.0;

  void moveWidget() {
    setState(() {
      // Update the position values to move the widget.
      topPosition += 20.0;
      leftPosition += 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                top: topPosition,
                left: leftPosition,
                child: MyWidget(
                  key: myWidgetKey,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: moveWidget,
            child: const Text('Move Widget'),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: const Center(
        child: Text('Drag me!'),
      ),
    );
  }
}
