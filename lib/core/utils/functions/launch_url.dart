import 'package:bookstore/core/utils/functions/showsnackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchcustomurl(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showsnackbar(context, 'Could not launch $url');
    }
  }
}
