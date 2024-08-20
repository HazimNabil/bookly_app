import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SomethingWentWrong extends StatelessWidget {
  final String errorMessage;

  const SomethingWentWrong({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: Styles.textStyle18.copyWith(
          color: Colors.red,
        ),
      ),
    );
  }
}
