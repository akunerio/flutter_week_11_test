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
  // Initial Selected Value
  String dropdownValue = 'Item 1';

  // List of items in our dropdown menu
  var itemsValue = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                //deprecated in flutter 2.0
                onPressed: () {},
                child: const Text('Flat Button'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outline Button'),
              ),
              DropdownButton(
                value: dropdownValue,
                items: itemsValue.map((String itemsValue) {
                  return DropdownMenuItem(
                    value: itemsValue,
                    child: Text(itemsValue),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.record_voice_over_sharp),
                  color: Colors.green,
              ),
              PopupMenuButton(
                onSelected: (value) {
                  // your logic
                },
                itemBuilder: (BuildContext bc) {
                  return const [
                    PopupMenuItem(
                      value: '/hello',
                      child: Text("Hello"),
                    ),
                    PopupMenuItem(
                      value: '/about',
                      child: Text("About"),
                    ),
                    PopupMenuItem(
                      value: '/contact',
                      child: Text("Contact"),
                    )
                  ];
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.directions),
        ));
  }
}
