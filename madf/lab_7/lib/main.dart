import 'package:flutter/material.dart';
import 'package:lab_7/screens/about.dart';

import 'labs/7/p1.dart';
import 'labs/7/p2.dart';
import 'labs/7/p3.dart';
import 'labs/7/p4.dart';
import 'labs/7/p5.dart';
import 'tabbar.dart';

Map<String, WidgetBuilder> routesConfig = {
  '/': (context) => const HomeScreen(),
  // '/about': (context) => const ScreenWrapper(screen: AboutScreen()),
  '/p1': (context) => const ScreenWrapper(screen: P1()),
  '/p2': (context) => const ScreenWrapper(screen: P2()),
  '/p3': (context) => const ScreenWrapper(screen: P3()),
  '/p4': (context) => const ScreenWrapper(screen: P4()),
  '/p5': (context) => const ScreenWrapper(screen: P5()),
};

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: routesConfig);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // bottomSheet: createTabBar(),
        appBar: AppBar(
          title: const Text('Soham Sagathiya'),
          bottom: createTabBar(),
        ),
        body:
            TabBarView(children: [HomeScreen(), Text("PAGe 1"), Text("Page2")]),
        // body: ListView(
        //   padding: const EdgeInsets.all(16),
        //   children: routesConfig.keys
        //       .where((route) => route != '/')
        //       .map((route) => ListTile(
        //             title: Text('Practical ${route.substring(2)}'),
        //             onTap: () {
        //               Navigator.pushNamed(context, route);
        //             },
        //           ))
        //       .toList(),
        // ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.builder(
                itemCount: routesConfig.keys.length - 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Practical ${index + 1}'),
                    onTap: () {
                      Navigator.pushNamed(context, '/p${index + 1}');
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }

  TabBar createTabBar() {
    return const TabBar(
      tabs: [
        Tab(text: 'Labs'),
        Tab(text: 'Practicals'),
        Tab(text: 'About'),
      ],
    );
  }
}

class ScreenWrapper extends StatelessWidget {
  final Widget screen;
  final String? title;

  const ScreenWrapper({super.key, required this.screen, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Screen View'),
      ),
      body: Column(
        children: [
          Expanded(child: screen),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to List of Screens'),
            ),
          ),
        ],
      ),
    );
  }
}
