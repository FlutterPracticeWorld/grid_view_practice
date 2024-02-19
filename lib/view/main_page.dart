import 'package:daru_flutter/view/chat/chat_tab.dart';
import 'package:daru_flutter/view/home/home_tab.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(),
      body: _buildTab(_tabIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap:_updateIndex,
        items: const [
          BottomNavigationBarItem(
            label: "홈",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "채팅",
            icon: Icon(Icons.chat_bubble),
          ),
        ],
        currentIndex: _tabIndex,
      ),
    );
  }

  void _updateIndex(int index) {
    setState(() => _tabIndex = index);
  }

  Widget _buildTab(int index) => switch (index) {
    0 => HomeTab(),
    _ => const ChatTab(),
  };
}
