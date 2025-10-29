import 'package:flutter/material.dart';
import 'package:muslim_pro_ui/create_task_ui/create_task_ui.dart';
import 'package:muslim_pro_ui/last_read_tile/latest_read_tile.dart';

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
      home: CreateTaskUi(),
    );
  }
}

//last Read
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
            LastReadTile(
              title: 'Last Read',
              subtitle: 'Shahi Bukhari: 135',
              iconImg: 'assets/images/iconImg.svg',
              ontap: () {
                //add your navigation logic here
              },
            ),
            SizedBox(height: 100),
            LastReadTile(
              title: 'Last Read',
              subtitle: 'Shahi Bukhari: 135',
              iconImg: 'assets/images/iconImg.svg',
              trailing: '',
              ontap: () {
                //add your navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
