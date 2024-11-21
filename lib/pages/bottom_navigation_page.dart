import 'package:computer_club_vladimir/pages/home_page.dart';
import 'package:computer_club_vladimir/pages/information_page.dart';
import 'package:computer_club_vladimir/pages/profile_page.dart';
import 'package:flutter/material.dart';
class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  final List<Widget> Pages = [HomePage(), InformationPage(), ProfilePage()];
  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Главная"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Информация"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Профиль"
          )
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ) ,
    );
  }
}
