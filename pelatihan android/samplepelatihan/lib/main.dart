import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Contoh",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Text("Hello"),
              Container(
                  height: 200,
                  width: 300,
                  child: Card(elevation: 20, child: Text("box"))),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
