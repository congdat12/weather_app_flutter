import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';

List<Widget> _widgetOptions = <Widget>[
  const HomePage(),
  const Text(
    'Index 1: Notification',
  ),
  const Text(
    'Index 2: Account',
  ),
];

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
           
        ),
        child: BottomNavigationBar(
          
          backgroundColor: const Color(0xff7F4CD2),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/Home_fill.png')),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/Search_alt_light.png')),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/Compass_light.png')),
              label: ''
            ),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(AssetImage('assets/icons/Setting_alt_line.png')),
            //   label: 'Some String'
            // ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
