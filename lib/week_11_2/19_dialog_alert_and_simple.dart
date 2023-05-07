import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Layout Demo 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: const Text('Show Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                _showSimpleDialog(context);
              },
              child: const Text('Show Simple Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("AlertDialog"),
        content: const Text("Continue show the AlertDialog?"),
        actions: [
          TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, true);
              } //close alertDialog
              ),
          TextButton(
            child: const Text("Yes"),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}

Future<void> _showSimpleDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return SimpleDialog(title: const Text("SimpleDialog"), children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('List 1. General'),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('List 2. Silver'),
        ),
      ]);
    },
  );
}
