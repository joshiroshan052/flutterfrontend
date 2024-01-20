import 'package:driver_register/features/bluebook/presentation/view/bluebook_view.dart';
import 'package:driver_register/features/fines/presentation/view/fine_view.dart';
import 'package:driver_register/features/home/presentation/view/home_view.dart';
import 'package:driver_register/features/license/presentation/view/license_view.dart';
import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({super.key});

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen = [
    const HomeBar(),
    const Bluebook(),
    const License(),
    const Fine(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstBottomScreen.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'BlueBook',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_file_rename_outline),
            label: 'License',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Fines',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
