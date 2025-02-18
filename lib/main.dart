import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dashboard', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/test.JPG'),
                  radius: 80.0,
                ),
                SizedBox(height: 20),
                Text(
                  'Abraar Jihaad Hibatullah',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '123220109',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Tombol 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Tombol 2'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Tombol 3'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      buildCard('assets/images/flutter.png', Colors.red),
                      buildCard('assets/images/flutter.png', Colors.green),
                      buildCard('assets/images/flutter.png', Colors.yellow),
                      buildCard('assets/images/flutter.png', Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Fungsi untuk membuat kartu dengan gambar dan warna berbeda
Widget buildCard(String imagePath, Color color) {
  return Card(
    elevation: 5,
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 40, width: 40, fit: BoxFit.cover),
        SizedBox(height: 7),
      ],
    ),
  );
}
