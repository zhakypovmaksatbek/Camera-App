import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? image;
  final picker = ImagePicker();
  final String title = "Surot Jok";
  final String title2 = ' Surot tartuuda bir kata chykty ';

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } catch (e) {
      // ignore: avoid_print
      print(title2 + " $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Sizes.height,
            width: Sizes.width,
            child:
                image != null ? Image.file(image!) : Center(child: Text(title)),
          ),
          const SizedBox(height: Sizes.sizeBox),
          ElevatedButton(
            onPressed: () {
              pickImage();
            },
            child: const Icon(
              Icons.camera,
              size: Sizes.iconSize,
            ),
          )
        ],
      ),
    );
  }
}

class Sizes {
  static const double height = 500;
  static const double sizeBox = 10;
  static const double width = 400;
  static const double iconSize = 50;
}
