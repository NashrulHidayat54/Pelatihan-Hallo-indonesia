import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JadwalMurid extends StatelessWidget {
  static const routeName = '/Jadwal';
  const JadwalMurid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal"),
      ),
    );
  }
}
