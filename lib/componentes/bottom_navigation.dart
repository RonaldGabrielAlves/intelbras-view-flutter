import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final Color iconLabelColor;
  final Color iconLabelColor2;

  MyBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.iconLabelColor,
    required this.iconLabelColor2,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home, color: iconLabelColor2),
          icon: Icon(Icons.home, color: iconLabelColor),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.notifications, color: iconLabelColor2),
          icon: Icon(Icons.notifications, color: iconLabelColor),
          label: 'Notificações',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.add_box_rounded, color: iconLabelColor2),
          icon: Icon(Icons.add_box_rounded, color: iconLabelColor),
          label: 'Adicionar Equipamento',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.help_rounded, color: iconLabelColor2),
          icon: Icon(Icons.help_rounded, color: iconLabelColor),
          label: 'Ajuda',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person, color: iconLabelColor2),
          icon: Icon(Icons.person, color: iconLabelColor),
          label: 'Perfil',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: iconLabelColor2,
      selectedIconTheme: IconThemeData(color: iconLabelColor2),
      unselectedItemColor: iconLabelColor,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
    );
  }
}
