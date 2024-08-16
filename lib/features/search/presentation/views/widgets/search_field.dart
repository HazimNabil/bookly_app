import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search book',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: 0.8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        ),
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
