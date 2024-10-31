import 'dart:developer';

import 'package:bookly_app/core/utils/widgets/custom_action_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomActionButton(
          onPressed: () {},
          text: bookModel.saleInfo?.saleability ?? 'Free',
          backgroundColor: Colors.white,
          color: Colors.black,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        CustomActionButton(
          onPressed: () async {
            Uri uri = Uri.parse(
                bookModel.volumeInfo.previewLink ?? 'https://www.google.com');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              log('error');
            }
          },
          text: bookModel.volumeInfo.previewLink != null
              ? 'Free preview'
              : 'Not Available',
          backgroundColor: const Color(0xffEF8262),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ],
    );
  }
}
