import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'show_snack_bar.dart';

Future<void> launchBookUrl(BuildContext context, String? url) async {
  if (url != null) {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        showSnackBar(context, 'Cannot launch $url');
      }
    }
  }
}
