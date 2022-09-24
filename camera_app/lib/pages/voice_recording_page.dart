import 'package:camera_app/pages/camera_page.dart';
import 'package:flutter/material.dart';

class VoiceRecordingPage extends StatefulWidget {
  const VoiceRecordingPage({Key? key}) : super(key: key);

  @override
  State<VoiceRecordingPage> createState() => _VoiceRecordingPageState();
}

class _VoiceRecordingPageState extends State<VoiceRecordingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voice recording"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.black,
                  size: Sizes.iconSize,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.red,
                  size: Sizes.iconSize,
                )),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.stop,
                color: Colors.black,
                size: Sizes.iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
