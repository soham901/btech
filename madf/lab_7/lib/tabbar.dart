import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.index == 2) {
      // "About" tab is selected (index 2)
      Navigator.pushNamed(context, '/about');
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        Center(child: Text('Labs Content')),
        Center(child: Text('Practicals Content')),
        Center(
            child: Text(
                'About Content')), // This can be empty or placeholder content
      ],
    );
  }

  TabBar createTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(text: 'Labs'),
        Tab(text: 'Practicals'),
        Tab(text: 'About'),
      ],
    );
  }
}
