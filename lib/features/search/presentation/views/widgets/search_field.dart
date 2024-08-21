import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  final controller = TextEditingController();

  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Search book',
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchBooksCubit>(context).searchBooks(
              controller.text,
            );
            FocusScope.of(context).unfocus();
            controller.clear();
          },
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
