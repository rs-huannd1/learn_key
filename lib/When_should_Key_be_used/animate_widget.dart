import 'package:flutter/material.dart';

class AnimateWidget extends StatelessWidget {
  const AnimateWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'here',
                  key: globalKey,
                ),
                Container(
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
                    if (globalKey.currentContext != null) {
                      await Scrollable.ensureVisible(
                        globalKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
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
