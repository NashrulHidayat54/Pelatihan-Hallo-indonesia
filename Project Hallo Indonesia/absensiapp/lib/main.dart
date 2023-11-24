import 'package:absensiapp/jadwal_absensi_murid_screen.dart';
import 'package:absensiapp/jadwal_murid.dart';
import 'package:absensiapp/rapot_murid.dart';
import 'package:absensiapp/tugas_murid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
                    title: Text("Peter Tanumiharjo"),
                    subtitle: Text("Rekayasa Perangkat Lunak"),
                  ),
                ),
              ),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: 20,
            top: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Card(
                  child: ListTile(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    leading: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.orange),
                        padding: const EdgeInsets.all(4),
                        child: Text('info')),
                    title: Text('Jadwal Seminar ITE TKJ'),
                    trailing: const Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // kotak menu
                    ShortcutMenu(
                      title: "Absensi",
                      icon: Icons.calendar_month,
                      color: Colors.red,
                      routeName: JadwalAbsenMuridScreen.routeName,
                    ),
                    ShortcutMenu(
                      title: "Jadwal",
                      icon: Icons.schedule,
                      color: Colors.yellow,
                      routeName: JadwalMurid.routeName,
                    ),
                    ShortcutMenu(
                      title: "Tugas",
                      icon: Icons.task,
                      color: Colors.cyan,
                      routeName: TugasMurid.routeName,
                    ),
                    ShortcutMenu(
                      title: "Rapot",
                      icon: Icons.assignment,
                      color: Colors.blue,
                      routeName: RapotMurid.routeName,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      routes: {
        JadwalAbsenMuridScreen.routeName: (context) => JadwalAbsenMuridScreen(),
        TugasMurid.routeName: (context) => TugasMurid(),
        JadwalMurid.routeName: (context) => JadwalMurid(),
        RapotMurid.routeName: (context) => RapotMurid(),
      },
    );
  }
}

class ShortcutMenu extends StatelessWidget {
  final String title;
  final String routeName;
  final IconData icon;
  final Color color;
  const ShortcutMenu({
    required this.title,
    required this.routeName,
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Card(
          child: Column(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                ),
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
