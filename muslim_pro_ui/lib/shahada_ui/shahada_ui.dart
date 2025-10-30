import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

class ShahadaUi extends StatelessWidget {
  const ShahadaUi({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Fixed background image to cover full screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/kaba_bg_2.png',
              fit:
                  BoxFit.cover, // This ensures the image covers the entire area
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 17),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  print('Back button clicked');
                },
                child: SvgPicture.asset(
                  'assets/images/leftarrow.svg',
                  fit: BoxFit.cover,
                  height: 17,
                  width: 17,
                  colorFilter: ColorFilter.mode(
                    Color(0XFFffffff),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Shahadah',
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'poppins',
                  color: Color(0XFFffffff),
                  fontSize: 20,
                  height: 1.6,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 175, left: 19),
              child: SizedBox(
                width: width * 0.9,
                child: Text(
                  'اَشْهَدُ اَنْ لَّآ اِلٰهَ اِلَّا اللهُ وَحْدَہٗ لَاشَرِيْكَ لَہٗ وَاَشْهَدُ اَنَّ مُحَمَّدًا عَبْدُهٗ وَرَسُولُہٗ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'me_quran',
                    color: Color(0XFFffffff),
                    fontSize: 40,
                    height: 1.7,

                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          // Kaaba image at bottom center

          // Translation box with separate styling for Arabic and English text
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 33, left: 12, right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.5, sigmaY: 5.5),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF).withValues(alpha: 0.071),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: SizedBox(
                        width: width * 0.9,
                        child: Column(
                          mainAxisSize:
                              MainAxisSize.min, // wrap content tightly
                          children: [
                            Text(
                              '"Ash-hadu Al-laaa Ilaaha Illa-llaahu Wahdahoo Laa Shareeka Lahoo Wa-Ash-hadu Anna Muhammadan \'Abduhoo Wa Rasooluhu."',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    fontFamily: 'roboto',
                                    fontStyle: FontStyle.italic,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 18), // adjust gap here
                            Text(
                              'I declare that there is no deity worthy of worship except Allah; and I declare that Muhammad(S) is the Messenger of Allah',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    fontFamily: 'roboto',
                                    fontStyle: FontStyle.normal,
                                    color: Color(0XFFFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
