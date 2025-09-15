import 'package:bookstore/core/utils/functions/launch_url.dart';
import 'package:bookstore/core/widgets/custombutton.dart';
import 'package:bookstore/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bookaction extends StatelessWidget {
  const bookaction({super.key, required this.bookmodel});
  final Bookmodel bookmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Custombutton(
              text: '19.99 \$',
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              borderradius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: Custombutton(
              onPressed: () async {
                launchcustomurl(context, bookmodel.volumeInfo.previewLink);
              },
              fontsize: 16,
              text: gettext(bookmodel),
              backgroundcolor: const Color.fromARGB(255, 241, 106, 106),
              textcolor: Colors.white,
              borderradius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String gettext(Bookmodel bookmodel) {
    if (bookmodel.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}
