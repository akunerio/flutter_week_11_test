import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
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
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Tabs Demo Scrollable')),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_filled),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.account_box_outlined),
                    text: "Account",
                  ),
                  Tab(
                    icon: Icon(Icons.alarm),
                    text: "Alarm",
                  ),
                  Tab(
                    icon: Icon(Icons.power_off),
                    text: "Power Off",
                  ),
                  Tab(
                    icon: Icon(Icons.access_alarm),
                    text: "Access",
                  ),
                  Tab(
                    icon: Icon(Icons.home),
                    text: "My Home",
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
                Icon(Icons.power_input),
                Icon(Icons.access_alarms),
                Icon(Icons.home),
              ],
            )
        )
    );
  }
}
