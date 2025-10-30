import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// ------------------------------------------------------
/// Color Constants
/// ------------------------------------------------------

class HajjVideosScreen extends StatelessWidget {
  const HajjVideosScreen({
    super.key,
    this.topTitle,
    this.videoTitle,
    this.videoPath,
    this.liveTitle,
    this.timerTitle,
  });
  final String? topTitle;

  final String? videoTitle;
  final String? videoPath;
  final String? liveTitle;
  final String? timerTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFFffffff),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/images/leftarrow.svg',
            height: 18,
            width: 18,
            color: const Color(0xFF3D4953), // ✅ Added color
          ),
          onPressed: () {},
        ),

        title: Text(
          topTitle!,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 19,
            letterSpacing: 0.2,
            color: Color(0xFF3D4953),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              return VideoCard(
                liveTitle: liveTitle,
                videoTitle: videoTitle,
                timerTitle: timerTitle,
              );
            },
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    this.videoTitle,
    this.videoPath,
    this.liveTitle,
    this.timerTitle,
  });

  final String? videoTitle;
  final String? videoPath;
  final String? liveTitle;
  final String? timerTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Thumbnail Section
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(13),
              topRight: Radius.circular(13),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: const Color(0xFFD8D8D8),
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ✅ Top row (Live badge)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 11,
                        right: 8,
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFF1313),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFffffff),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  liveTitle!,
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(
                                        fontFamily: 'roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Color(0XFFffffff),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ✅ Center icon
                    const Icon(
                      Icons.video_library_rounded,
                      size: 38,
                      color: Colors.white,
                    ),

                    // ✅ Bottom row (Time badge)
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 7),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1.5,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF323B39),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              timerTitle!,
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0XFFffffff),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ✅ Title below thumbnail - Fixed to 2 lines with ellipsis
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              children: [
                Text(
                  videoTitle!,
                  maxLines: 2,

                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13,
                    height: 1.3,
                    color: Color(0xFF3D4953),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
