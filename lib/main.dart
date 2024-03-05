import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz_2/beranda.dart';
import 'package:flutter_quiz_2/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late int index;
  @override
  void initState() {
    index = 0; // TODO: implement initState
    super.initState();
  }

  List showWidget = [
    Beranda(),
    Center(
      child: Text("Sedang Perbaikan"),
    ),
    Center(
      child: Text("Sedang Perbaikan"),
    ),
    Myprofile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "PlusJakartaSans"),
      home: Scaffold(
        body: showWidget[index],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF21366f),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Akademi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Reguler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ),
      ),
      routes: {
        Beranda.nameRoute: (context) => Beranda(),
        Myprofile.nameRoute: (context) => Myprofile(),
      },
    );
  }
}
