import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShareThisPost extends StatelessWidget {
  final VoidCallback? onFacebookTap;
  final VoidCallback? onTwitterTap;
  final VoidCallback? onLinkedInTap;
  final VoidCallback? onPinterestTap;
  final VoidCallback? onCopyTap;
  final VoidCallback? onCloseTap;
  final String linkUrl;

  const ShareThisPost({
    super.key,
    this.onFacebookTap,
    this.onTwitterTap,
    this.onLinkedInTap,
    this.onPinterestTap,
    this.onCopyTap,
    this.onCloseTap,
    this.linkUrl = 'shortlink.link/fddsfads12',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
            height: 380,
            decoration: BoxDecoration(
              color: Color(0XFFffffff),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Share This Post',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w800,
                    fontSize: 21,
                    height: 1.0,
                    letterSpacing: 0.02,
                    color: Color(0xFF3D4953),
                  ),
                ),
                const SizedBox(height: 29),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Share With Social Media',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.5,
                      height: 1.46,
                      letterSpacing: 0.01,
                      color: Color(0xFF3D4953),
                    ),
                  ),
                ),
                const SizedBox(height: 21),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: onFacebookTap,
                      child: SvgPicture.asset(
                        'assets/images/facebook.svg',
                        width: 34,
                        height: 34,
                      ),
                    ),
                    const SizedBox(width: 19),
                    GestureDetector(
                      onTap: onTwitterTap,
                      child: SvgPicture.asset(
                        'assets/images/twitter.svg',
                        width: 34,
                        height: 34,
                      ),
                    ),
                    const SizedBox(width: 19),
                    GestureDetector(
                      onTap: onLinkedInTap,
                      child: SvgPicture.asset(
                        'assets/images/linkedin.svg',
                        width: 34,
                        height: 34,
                      ),
                    ),
                    const SizedBox(width: 19),
                    GestureDetector(
                      onTap: onPinterestTap,
                      child: SvgPicture.asset(
                        'assets/images/pinterest.svg',
                        width: 34,
                        height: 34,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Or Copy Link',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      height: 1.46,
                      letterSpacing: 0.01,
                      color: Color(0xFF3D4953),
                    ),
                  ),
                ),
                const SizedBox(height: 13),

                Container(
                  height: 63,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          linkUrl,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14.5,
                                height: 1.0,
                                letterSpacing: 0.01,
                                color: Color(0xFF3D4953),
                              ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onCopyTap,
                        child: SvgPicture.asset(
                          'assets/images/copy_btn.svg',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: onCloseTap,
                      child: Container(
                        width: 140,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xFFF4F4F4),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Close',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF3D4953),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
