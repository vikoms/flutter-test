import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedTab = 0;

  void _changeSelectedTabBar(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Example"),
      ),
      body: Center(
        child: Text(
          "Tab Active $_selectedTab",
          style: const TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedTab,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedTabBar,
      ),
    );
  }
}

class BottomNavigationBarConvex extends StatefulWidget {
  const BottomNavigationBarConvex({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarConvexState createState() =>
      _BottomNavigationBarConvexState();
}

class _BottomNavigationBarConvexState extends State<BottomNavigationBarConvex> {
  int _selectedTab = 0;

  void _changeSelectedTabBar(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Example"),
      ),
      body: Center(
        child: Text(
          "Tab Active $_selectedTab",
          style: const TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(
            icon: Icon(Icons.home),
            title: "Home",
          ),
          TabItem(
            icon: Icon(Icons.assignment),
            title: "Assignment",
          ),
          TabItem(
            icon: Icon(Icons.mail),
            title: "Inbox",
          ),
          TabItem(
            icon: Icon(Icons.person),
            title: "Profile",
          ),
        ],
        onTap: _changeSelectedTabBar,
        initialActiveIndex: _selectedTab,
      ),
    );
  }
}
