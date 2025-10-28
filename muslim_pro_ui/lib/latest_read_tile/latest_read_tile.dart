import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LastReadTile extends StatelessWidget {
  const LastReadTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconImg,
    this.trailing,
    this.ontap
  });

  final String title;
  final String subtitle;
  final String iconImg;
  final String? trailing;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/Vector.png'),
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40.0,
                      height: 50.0,
                      child: Center(
                        child: SvgPicture.asset(iconImg, height: 40),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 7),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'roboto',
                        color: Color(0xFF36B084),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'poppins',
                        color: Color(0xFF3D4953),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Only show trailing if it is not null
            if (trailing != null)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    trailing!,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'poppins',
                      color: Color(0xFF3D4953),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
