import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/utils/widgets/custom_action_button.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

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
            await launchURL(context, bookModel.volumeInfo.previewLink);
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
