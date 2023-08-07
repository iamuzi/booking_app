import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _seletedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_seletedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _seletedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueGrey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: 'Ticket'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
