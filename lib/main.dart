import 'package:flutter/material.dart';
import 'package:slashtask/constants.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view_mobile.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view_tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slash Home View',
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= mobTabBreakPoint) {
          return const SlashHomeViewMobile();
        } else if (constraints.maxWidth <= tabDeskBreakPoint) {
          return const Scaffold(
            body:SlashHomeViewTablet(),
          );
        } else {
          return const Scaffold(
            body: Text("Desk"),
          );
        }
      }),
    );
  }
}

