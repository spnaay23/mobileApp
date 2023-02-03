import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _key = GlobalKey<FormState>();
  final myController = TextEditingController();
  final fruits = ['apple', 'banana', 'orange', 'grape'];
  String _fruit = '';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              controller: myController,
            ),
            Autocomplete(optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              } else {
                return fruits.where((String fruits) {
                  return fruits
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              }
              
              
            }),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    //check validate
                    ScaffoldMessenger.of(context).showSnackBar((SnackBar(
                        content: Text(
                            'Processing Data')))); //after submit it will show processing text
                  }
                },
                child: Text("Submit"))
          ],
        ));
  }
}
