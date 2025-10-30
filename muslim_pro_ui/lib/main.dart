import 'package:flutter/material.dart';
import 'package:muslim_pro_ui/create_task_ui/create_task_ui.dart';
import 'package:muslim_pro_ui/hajj_videos/hajj_videos.dart';
import 'package:muslim_pro_ui/hajj_videos_2/hajj_videos_two.dart';
import 'package:muslim_pro_ui/last_read_tile/latest_read_tile.dart';
import 'package:muslim_pro_ui/shahada_ui/shahada_ui.dart';
import 'package:muslim_pro_ui/share_this_post/share_this_post.dart';

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
      // home: ShahadaUi(),
      home: HajjVideosTwo(),
    );
  }
}

class ShareThisPostWidget extends StatelessWidget {
  const ShareThisPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LastReadTile(
            //   title: 'Last Read',
            //   subtitle: 'Shahi Bukhari: 135',
            //   iconImg: 'assets/images/iconImg.svg',
            //   ontap: () {
            //     //add your navigation logic here
            //   },
            // ),
            // SizedBox(height: 20),
            // LastReadTile(
            //   title: 'Last Read',
            //   subtitle: 'Shahi Bukhari: 135',
            //   iconImg: 'assets/images/iconImg.svg',
            //   trailing: '',
            //   ontap: () {
            //     //add your navigation logic here
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('Video Controller Bar Demo'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        // This container simulates a video player's view
        child: Container(
          width: double.infinity,
          height: 250,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            // A background image to mimic the original screenshot's context
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1554629947-334ff61d85dc?q=80&w=2072&auto=format&fit=crop',
              ),
              fit: BoxFit.cover,
              opacity: 0.6,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          // A Stack is used to overlay the controller on top of the 'video'
          child: const Stack(
            children: [
              // The controller bar is positioned at the bottom of the Stack
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: VideoControllerBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomVideoControllerBar extends StatelessWidget {
  final double progress; // 0.0 to 1.0
  final VoidCallback onPlayPause;
  final bool isPlaying;
  final VoidCallback onSettings;
  final VoidCallback onFullscreen;

  const CustomVideoControllerBar({
    super.key,
    required this.progress,
    required this.onPlayPause,
    required this.isPlaying,
    required this.onSettings,
    required this.onFullscreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.55), // dark transparent background
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          /// PLAY / PAUSE BUTTON
          IconButton(
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
              size: 22,
              color: Colors.white,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onPlayPause,
          ),

          const SizedBox(width: 10),

          /// GREEN PROGRESS BAR
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(4),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final barWidth = constraints.maxWidth * progress;
                  return Stack(
                    children: [
                      Container(
                        width: barWidth,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFF32C98A), // ✅ green bar
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// SIGNAL ICON
          Icon(Icons.signal_cellular_alt, size: 20, color: Colors.white),

          const SizedBox(width: 10),

          /// SETTINGS ICON
          IconButton(
            icon: const Icon(Icons.settings, size: 20, color: Colors.white),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onSettings,
          ),

          /// FULLSCREEN ICON
          IconButton(
            icon: const Icon(Icons.fullscreen, size: 22, color: Colors.white),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onFullscreen,
          ),
        ],
      ),
    );
  }
}

/// A widget that replicates the video controller bar from the image.
/// A widget that replicates the video controller bar from the image.
class VideoControllerBar extends StatelessWidget {
  const VideoControllerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Color(0xFF202C2A), // ✅ darker like screenshot
        borderRadius: BorderRadius.circular(4), // ✅ smaller radius
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ✅ Play icon (smaller & white)
          GestureDetector(
            onTap: () {
              print('Play button tapped');
            },
            child: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 8),

          // ✅ Progress bar — thinner & accurate color
          Expanded(
            child: Container(
              height: 17,
              child: Stack(
                children: [
                  // Buffer progress (background bar)
                  LinearProgressIndicator(
                    minHeight: 12,
                    value: 0.8,
                    backgroundColor: Colors.white.withValues(alpha: 0.20),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white.withValues(alpha: 0.40),
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),

                  // Played progress bar
                  LinearProgressIndicator(
                    minHeight: 12,
                    value: 0.6,
                    backgroundColor: Colors.transparent,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Color(0xFF36B084), // ✅ matched green to screenshot
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          // ✅ Signal icon (smaller)
          const Icon(Icons.signal_cellular_alt, color: Colors.white, size: 18),
          const SizedBox(width: 10),

          // ✅ Settings icon
          const Icon(Icons.settings, color: Colors.white, size: 18),
          const SizedBox(width: 10),

          // ✅ Fullscreen icon
          const Icon(Icons.fullscreen, color: Colors.white, size: 20),
        ],
      ),
    );
  }
}
