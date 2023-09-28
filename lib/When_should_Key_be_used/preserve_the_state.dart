import 'package:flutter/material.dart';

class PreserveTheState extends StatefulWidget {
  const PreserveTheState({super.key});

  @override
  State<PreserveTheState> createState() => _PreserveTheStateState();
}

class _PreserveTheStateState extends State<PreserveTheState> {
  List<Widget> emojis = [
    GetEmoj(
      index: 0,
    ),
    GetEmoj(
      index: 1,
    )
  ];

  void swapEmoji() {
    print('here');
    setState(() {
      emojis.insert(1, emojis.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build lại nè');
    return Scaffold(
        body: SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: emojis,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: swapEmoji,
            child: const Text("Swap"),
          ),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class GetEmoj extends StatefulWidget {
  GetEmoj({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;

  @override
  State<GetEmoj> createState() => _GetEmojState();
}

class _GetEmojState extends State<GetEmoj> {
  late int value;
  @override
  void initState() {
    super.initState();
    value = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    print('build text nè');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            key: UniqueKey(),
            value.toString(),
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  value++;
                });
              },
              child: const Icon(Icons.add))
        ],
      ),
    );
  }
}
