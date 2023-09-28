import 'package:flutter/material.dart';

class AccessWidget extends StatelessWidget {
  AccessWidget({
    Key? key,
  }) : super(key: key);

  //Defining a GlobalKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Full Data')),
                  );
                }
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
