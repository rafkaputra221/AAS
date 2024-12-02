import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KUE PUTU"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          // Left Column
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "KUE PUTU",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Kue putu adalah jajanan tradisional Indonesia yang populer. Kue ini berbentuk silinder memanjang dengan warna hijau cerah, bertekstur lembut dan kenyal. Isiannya adalah gula merah cair yang manis, dan biasanya ditaburi kelapa parut. Kue putu memiliki aroma pandan yang khas dan sering dijual oleh pedagang keliling. Rasanya yang manis gurih membuat kue putu menjadi favorit banyak orang.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star_border, color: Colors.green),
                      SizedBox(width: 8),
                      Text("170 Reviews", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Prep", "15 min"),
                      _buildInfoColumn(Icons.kitchen, "Cook", "10 min"),
                      _buildInfoColumn(Icons.group, "Feeds", "4-6"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right Image
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/putu.webp', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create information columns
  static Column _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}