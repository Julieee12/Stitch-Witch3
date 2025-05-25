import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:image_field/image_field.dart';

class SingleImageUpload extends StatelessWidget {
  const SingleImageUpload(this.callback, {super.key});

  // Passes the picked base64 encoded image file
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return ImageField(
      enabledCaption: false,
      multipleUpload: false,
      cardinality: 1,
      onSave: (List<ImageAndCaptionModel>? imageAndCaptionList) {
        ImageAndCaptionModel? firstImage = imageAndCaptionList?.elementAt(0);
        if (firstImage != null) {
          String base64Image = base64Encode(firstImage.file);

          callback(base64Image);
        }
      },
    );
  }
}