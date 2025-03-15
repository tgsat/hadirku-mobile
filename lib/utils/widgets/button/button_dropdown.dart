import 'package:flutter/material.dart';

class ButtonDropdown extends StatelessWidget {
  final String title;
  final dynamic listDropdownItem;
  final dynamic selectedItem;
  final dynamic validate;
  final Function(dynamic selectedItem) press;
  const ButtonDropdown({
    super.key,
    required this.title,
    this.listDropdownItem,
    this.selectedItem,
    this.validate,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          errorStyle: TextStyle(height: 0, color: Colors.transparent),
          border: InputBorder.none,
        ),
        icon: const Icon(Icons.keyboard_arrow_down),
        value: selectedItem,
        items: listDropdownItem,
        isExpanded: true,
        hint: Text(title),
        onChanged: (value) {
          press(value);
        },
        validator: validate,
      ),
    );
  }
}