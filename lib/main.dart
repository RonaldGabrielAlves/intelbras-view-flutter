import 'package:flutter/material.dart';
import 'package:intelbrasview/componentes/bottom_navigation.dart';

import 'componentes/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intelbras',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(242, 255, 255, 255),
      ),
      home: const MyHomePage(title: 'Clientes Conectados'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color iconLabelColor = Color.fromARGB(255, 136, 136, 136);
  Color iconLabelColor2 = Color(0xFF00AF39);

  int ativosnow = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 163, 53),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 2,
              ),
              Text(
                'Conectados em Recepção de Intelbras',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
          ]),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 17, left: 17, top: 17),
              child: Row(children: [
                Text(
                  "Ativos agora ($ativosnow)",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 63, 73, 77),
                      fontSize: 15),
                )
              ]),
            ),
            Container(
              height: 10,
            ),
            Expanded(
              child: Builder(builder: (_) {
                return ListViewIntelbras();
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
          iconLabelColor: iconLabelColor,
          iconLabelColor2: iconLabelColor2),
    );
  }
}
