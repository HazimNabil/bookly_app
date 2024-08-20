import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/functions/launch_book_url.dart';

class BookAction extends StatelessWidget {
  final String? previewUrl;

  const BookAction({super.key, required this.previewUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              height: 45,
              child: CustomButton(
                text: 'Free',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 45,
              child: CustomButton(
                text: getPreviewLabel(),
                backgroundColor: Colors.orange,
                textColor: Colors.white,
                onPressed: () => launchBookUrl(context, previewUrl),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getPreviewLabel() {
    if (previewUrl != null) {
      return 'Free preview';
    }
    return 'Not available';
  }
}
