import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Color.fromARGB(255, 0, 115, 255), // สีของไอเท็มที่ถูกเลือก
      unselectedItemColor: Colors.grey, // สีของไอเท็มที่ไม่ได้ถูกเลือก
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
       // สีพื้นหลังของแถบ Navigation
      type: BottomNavigationBarType.fixed, // ป้องกันการแสดงเอฟเฟกต์ shift เมื่อมีมากกว่า 3 ไอคอน
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Today'),
        BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Game'),
        BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'App'),
        BottomNavigationBarItem(icon: Icon(Icons.upgrade_sharp), label: 'Update'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
    );
  }
}
