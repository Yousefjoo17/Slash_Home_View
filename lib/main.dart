import 'package:flutter/material.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slash Home View',
      /*
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            kPrimaryColor, 
      ),
      */
      home: SlashHomeView(),
    );
  }
}
