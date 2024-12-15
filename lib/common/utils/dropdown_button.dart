import 'package:cafe_and_book/common/constants/app_colors.dart';
import 'package:cafe_and_book/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final String value;
  final List<String> options;
  final ValueChanged<String> onChanged;

  const CustomDropdownButton({
    super.key,
    required this.value,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      underline: const SizedBox(),
      isDense: true,
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(20),
      dropdownColor: AppColors.background,
      icon: const Padding(
        padding: EdgeInsets.only(left: 0.0),
        child: Icon(Icons.arrow_drop_down),
      ),
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Center(
            child: SmallText13(
              text: value,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          onChanged(newValue);
        }
      },
    );
  }
}
