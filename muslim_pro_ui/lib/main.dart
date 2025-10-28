import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muslim_pro_ui/core/colors/colors.dart';
import 'package:muslim_pro_ui/core/images/images.dart';
import 'package:muslim_pro_ui/latest_read_tile/latest_read_tile.dart';

void main() {
  runApp(const MyApp());
}

// The root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LastReadCardWidget(),
    );
  }
}

class LastReadCardWidget extends StatelessWidget {
  const LastReadCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LastReadTile(
              title: 'Last Read',
              subtitle: 'Shahi Bukhari : 135',
              iconPath: AppImages.iconImg,
              backgroundPath: AppImages.bgImg,
            ),
          ],
        ),
      ),
    );
  }
}
