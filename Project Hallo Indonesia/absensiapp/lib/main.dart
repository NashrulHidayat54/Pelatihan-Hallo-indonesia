import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Center(
                  child: ListTile(
                    textColor: Colors.white,
                    leading: Hero(
                        tag: 'pp',
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/boy.png'),
                        )),
                    title: Text("Didi Ahmadi"),
                    subtitle: Text("Rekayasa Perangkat Lunak"),
                  ),
                ),
              ),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
        ),
      ),
    );
  }
}
