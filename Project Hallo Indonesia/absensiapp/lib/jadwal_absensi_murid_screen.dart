import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JadwalAbsenMuridScreen extends StatelessWidget {
  static const routeName = '/jadwal-siswa';
  const JadwalAbsenMuridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absensi"),
      ),
    );
  }
}
