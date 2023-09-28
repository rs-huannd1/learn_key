import 'package:flutter/material.dart';
import 'package:learn_key/How_to_use_key_correctly/text_widget.dart';

class OtherWayUseGlobalOjectKey extends StatelessWidget {
  const OtherWayUseGlobalOjectKey({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const TextWidget(),
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
                    const globalKey = GlobalObjectKey('textKey');
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
