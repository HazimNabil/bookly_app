import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final controller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  var validateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validateMode,
      child: TextFormField(
        controller: controller,
        validator: validateBookTitle,
        decoration: InputDecoration(
          hintText: 'Search book',
          suffixIcon: IconButton(
            onPressed: () => onSearchButtonPressed(context),
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
          border: buildOutlineBorder(),
        ),
      ),
    );
  }

  void onSearchButtonPressed(BuildContext context) {
    if (formKey.currentState!.validate()) {
      BlocProvider.of<SearchBooksCubit>(context).searchBooks(
        controller.text,
      );
      FocusScope.of(context).unfocus();
      controller.clear();
      setState(() => validateMode = AutovalidateMode.disabled);
    } else {
      setState(() => validateMode = AutovalidateMode.always);
    }
  }

  String? validateBookTitle(value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a book title before searching';
    }
    return null;
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
