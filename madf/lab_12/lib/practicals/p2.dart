import 'package:flutter/material.dart';

class P2 extends StatefulWidget {
  const P2({super.key});

  @override
  State<P2> createState() => _P2State();
}

class _P2State extends State<P2> {
  List<String> data = [
    "abc",
    "xyz",
    "pqr",
    "rty",
    "yui",
    "mno",
    "jkl",
    "ghi",
    "def",
    "qwe",
    "zxc",
    "wap"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // ListView Section
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: data.length,
                  itemBuilder: (ctx, idx) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      title: Text(
                        data[idx],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 430,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: data.length,
                  itemBuilder: (ctx, idx) {
                    return Card(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          data[idx],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
