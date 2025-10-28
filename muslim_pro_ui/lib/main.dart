import 'package:flutter/material.dart';
import 'package:muslim_pro_ui/latest_read_tile/latest_read_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'roboto'),
      home: const LastReadCardWidget(),
    );
  }
}

class LastReadCardWidget extends StatelessWidget {
  const LastReadCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatestReadTile(
              title: 'Last Read',
              subtitle: 'Shahi Bukhari: 135',
              iconImg: 'assets/images/iconImg.svg',
            ),
            SizedBox(height: 100),
            LatestReadTile(
              title: 'Last Read',
              subtitle: 'Shahi Bukhari: 135',
              iconImg: 'assets/images/iconImg.svg',
              trailing: '',
            ),
          ],
        ),
      ),
    );
  }
}
