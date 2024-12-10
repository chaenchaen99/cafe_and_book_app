import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_texts.dart';

class GoToBookSearchScreen extends StatefulWidget {
  const GoToBookSearchScreen({super.key});

  @override
  State<GoToBookSearchScreen> createState() => _GoToBookSearchScreenState();
}

class _GoToBookSearchScreenState extends State<GoToBookSearchScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          labelText: AppTexts.search_bar_hint_text,
          suffixIcon: Icon(
            Icons.search,
            color: AppColors.contentPrimary,
          ),
        ),
      ),
    );
  }
}
