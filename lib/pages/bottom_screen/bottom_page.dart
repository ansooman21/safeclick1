import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/pages/bottom_screen/SOS.dart';
import 'package:safeclick1/pages/bottom_screen/chat_screen.dart';
import 'package:safeclick1/pages/bottom_screen/contacts.dart';
import 'package:safeclick1/pages/bottom_screen/home_page.dart';

class bottom_page extends StatefulWidget {
  const bottom_page({super.key});

  @override
  State<bottom_page> createState() => _bottom_pageState();
}

class _bottom_pageState extends State<bottom_page> {
  int current_index = 0;
  List<Widget> pages = [
    home_screen(),
    contacts_page(),
    SOS_trigger(),
    Chat_page(),
    contacts_page(),
  ];
  onTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: current_index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Call',
            icon: Icon(Icons.call),
          ),
          BottomNavigationBarItem(
            label: 'SOS',
            icon: Icon(Icons.sos),
          ),
          BottomNavigationBarItem(
            label: 'contacts',
            icon: Icon(Icons.contacts),
          ),
          BottomNavigationBarItem(
            label: 'chats',
            icon: Icon(Icons.chat),
          ),
        ],
      ),
    );
  }
}
