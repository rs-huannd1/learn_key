import 'package:flutter/material.dart';

class GlobalKeyNull extends StatefulWidget {
  const GlobalKeyNull({super.key});

  @override
  State<GlobalKeyNull> createState() => _GlobalKeyNullState();
}

class _GlobalKeyNullState extends State<GlobalKeyNull> {
  final globalKey = GlobalKey();
  final globalKey2 = GlobalKey();
  bool isKey1 = true;
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // isShow
                //     ? Text(
                //         'here',
                //         key: globalKey,
                //       )
                //     : const SizedBox(),
                Container(
                  key: isKey1 ? globalKey : globalKey2,
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.redAccent,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.amber,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.redAccent,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                MaterialButton(
                  onPressed: () async {
                    isKey1 = false;
                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        isShow = true;
                      });
                    });
                    // Using GlobalKey Improperly
                    await Scrollable.ensureVisible(
                      globalKey.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: const Text('Scroll to top'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
