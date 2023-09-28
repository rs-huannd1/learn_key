import 'package:flutter/material.dart';

class ListTitleWidget extends StatefulWidget {
  const ListTitleWidget({Key? key}) : super(key: key);

  @override
  State<ListTitleWidget> createState() => _ListTitleWidgetState();
}

class _ListTitleWidgetState extends State<ListTitleWidget> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  void _addItem() {
    setState(() {
      // int newItemNumber = items.length + 1;
      // items.add('Item $newItemNumber');
    });
  }

  void _removeItem(int index) {
    setState(() {
      // items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  key: UniqueKey(),
                  title: Text(items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeItem(index),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: _addItem,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
