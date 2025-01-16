import 'package:flutter/material.dart';
import 'api.dart';

class Lab11_p2 extends StatefulWidget {
  const Lab11_p2({super.key});

  @override
  State<Lab11_p2> createState() => _Lab11_p2State();
}

class _Lab11_p2State extends State<Lab11_p2> {
  late Future<List<Albumn>> albumnFuture;

  @override
  void initState() {
    super.initState();
    albumnFuture = Future.delayed(
        Duration(seconds: 1), () => Albumn.fetch()); // Simulating async loading
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Albums')),
      body: FutureBuilder<List<Albumn>>(
        future: albumnFuture,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No albums available.'));
          } else {
            final albumnData = snapshot.data!;
            return ListView.builder(
              itemBuilder: (ctx, idx) => listItem(albumnData[idx]),
              itemCount: albumnData.length, // Use the correct item count
            );
          }
        },
      ),
    );
  }

  Widget listItem(Albumn albumn) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            albumn.author,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Image.network(
            albumn.url, // Ensure URL is valid and returns an image
            height: albumn.height.toDouble(),
            width: albumn.width.toDouble(),
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child; // Display the image when it's fully loaded
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
