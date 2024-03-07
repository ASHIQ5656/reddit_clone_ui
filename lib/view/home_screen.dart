import 'package:flutter/material.dart';
import 'package:ui/view/chat_screen.dart';
import 'package:ui/view/chat_screen_appbar.dart';
import 'package:ui/view/home_appbar.dart';
import 'package:ui/view/home_wiget.dart';
import 'package:ui/view/inbox_appbar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const NavDrawer(),
      appBar: [
        const HomeAppBar(),
        const HomeAppBar(),
        const HomeAppBar(),
        const ChatScreenAppBar(),
        const InboxAppBar(),
      ].elementAt(_selectedItemIndex) as PreferredSizeWidget?,
      endDrawer: const ProfileDrawer(),
      body: [
        const HomeWiget(),
        const Text("Coming Soon"),
        const Text("Coming Soon"),
        const ChatScreen(),
        const InboxAppBar(),
      ].elementAt(_selectedItemIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _onBottomNavItemTap(index, context);
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItemIndex,
        items: _bottomBarItem(_selectedItemIndex),
        unselectedItemColor: Theme.of(context).colorScheme.surface,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  void _onBottomNavItemTap(int index, BuildContext context) {
    if (index == 2) {
      var routeName;
      Navigator.of(context).pushNamed(CreatePostScreen as String);
    } else {
      setState(() {
        _selectedItemIndex = index;
      });
    }
  }

  List<BottomNavigationBarItem> _bottomBarItem(int selectedIndex) {
    return [
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 0 ? Icons.home_filled : Icons.home_outlined,
          size: 24,
        ),
        backgroundColor: Colors.white,
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 1
              ? Icons.compass_calibration
              : Icons.compass_calibration_outlined,
          size: 24,
        ),
        backgroundColor: Colors.white,
        label: "Unknown",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.add,
          size: 24,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 3 ? Icons.chat_bubble : Icons.chat_bubble_outline,
          size: 24,
        ),
        label: "chat",
      ),
      BottomNavigationBarItem(
          icon: Icon(
            selectedIndex == 4 ? Icons.notifications : Icons.notifications_none,
            size: 24,
          ),
          label: "Notification"),
    ];
  }
}
