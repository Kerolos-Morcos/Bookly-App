import 'package:bookly_app/core/utils/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(BuildContext context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      customSnackBar(
        // ignore: use_build_context_synchronously
        context,
        'Couldn\'t launch url:\n$url',
        backgroundColor: Colors.red,
      );
    }
  }
}
