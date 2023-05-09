import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Layout Demo 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int numberIncrement = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Homepage')),
      body: Center(
          child: Column(
            children: [
              Text('$numberIncrement', style:const TextStyle(fontSize: 100)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    numberIncrement++;
                  });
                },
                child: const Text('Add the number'),
              ),
            ],
          )
      ),
    );
  }
}
