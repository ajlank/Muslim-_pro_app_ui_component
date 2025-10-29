import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

// You can copy and paste this entire code into your `main.dart` file and run it.

/// Color constants used throughout the app, extracted from the image.
class AppColors {
  static const Color scaffoldBackground = Color(0xFFF9F9F9);
  static const Color appBarAndCardBackground = Colors.white;
  static const Color primaryText = Color(
    0xFF2D3748,
  ); // Dark gray for titles and text
  static const Color secondaryText = Color(
    0xFF4A5568,
  ); // Lighter gray for subtitles
  static const Color durationTagBackground = Color(0xFFE2E8F0);
  static const Color liveBadgeBackground = Color(0xFFE53935);
  static const Color videoProgress = Color(0xFF4DB6AC);
  static const Color videoProgressBackground = Color(
    0x66FFFFFF,
  ); // Semi-transparent white
  static const Color placeholderBackground = Color(0xFF4A4A4A);
}

class HajjVideosTwo extends StatelessWidget {
  const HajjVideosTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: AppBar(
        backgroundColor: Color(0XFFffffff),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/images/leftarrow.svg',
            height: 18, // Set the desired height
            width: 18, // Set the desired width
          ),
          onPressed: () {},
        ),
        title: Text(
          'Hajj Videos',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            letterSpacing: 0.3,
            color: Color(0xFF3D4953),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16), // Top margin for the first card
            const _MainVideoPlayer(),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
              child: Text(
                'More Videos',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            // List of other videos
            const _VideoListItem(
              title: 'When is Hajj 2023 - Sacred Pilgrimage ...',
              duration: '52:25:00',
              isLive: true,
            ),
            const _VideoListItem(
              title: 'When is Hajj 2023 - Sacred Pilgrimage ...',
              duration: '52:25:00',
            ),
            const _VideoListItem(
              title: 'When is Hajj 2023 - Sacred Pilgrimage ...',
              duration: '52:25:00',
            ),
            const _VideoListItem(
              title: 'When is Hajj 2023 - Sacred Pilgrimage ...',
              duration: '52:25:00',
            ),
            const SizedBox(height: 16), // Bottom padding for the list
          ],
        ),
      ),
    );
  }
}

/// Widget for the main video player at the top of the screen.
class _MainVideoPlayer extends StatelessWidget {
  const _MainVideoPlayer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appBarAndCardBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video placeholder and controls
            Stack(
              children: [
                // Placeholder for the video thumbnail
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Container(
                    height: 210,
                    width: double.infinity,
                    color: AppColors.placeholderBackground,
                    child: const Icon(
                      Icons.theaters,
                      color: Colors.white54,
                      size: 60,
                    ),
                  ),
                ),
                // Gradient overlay for better control visibility
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                // Video controls
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 28,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          height: 5, // Height of the progress bar track
                          child: LinearProgressIndicator(
                            value: 0.6, // 60% progress
                            backgroundColor: AppColors.videoProgressBackground,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.videoProgress,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.signal_cellular_alt_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.settings, color: Colors.white, size: 20),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Video Title
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hajj-Muslim pilgrims face losing out from online booking to Mecca',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: 0,
                  color: Color(0xFF3D4953),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget for each item in the "More Videos" list.
class _VideoListItem extends StatelessWidget {
  final String title;
  final String duration;
  final bool isLive;

  const _VideoListItem({
    required this.title,
    required this.duration,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.appBarAndCardBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Thumbnail with Live badge if applicable
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 120,
                    height: 80,
                    color: AppColors.placeholderBackground,
                    child: const Icon(
                      Icons.theaters,
                      color: Colors.white54,
                      size: 30,
                    ),
                  ),
                ),
                if (isLive)
                  const Positioned(top: 6, left: 6, child: _LiveBadge()),
              ],
            ),
            const SizedBox(width: 12),
            // Video details (Title and Duration)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryText,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  _DurationTag(duration: duration),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A small red "Live" badge with a circle icon.
class _LiveBadge extends StatelessWidget {
  const _LiveBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: Color(0xFFFF1313), // red background
        borderRadius: BorderRadius.circular(12), // pill shape
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.circle, color: Colors.white, size: 8), // small dot
          const SizedBox(width: 4),
          Text(
            'Live',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontFamily: 'roboto',
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

/// A gray tag to display the video duration.
class _DurationTag extends StatelessWidget {
  final String duration;
  const _DurationTag({required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.durationTagBackground,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        duration,
        style: const TextStyle(
          color: AppColors.secondaryText,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
