import 'package:flutter/material.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  //final String labelText;
  final List<T> items;
  final T? value;
  final ValueChanged<T?> onChanged;

  const CustomDropdownFormField({
    //required this.labelText,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: const InputDecoration(
        //labelText: labelText,
        border: OutlineInputBorder(),
      ),
      value: value,
      onChanged: onChanged,
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString()),
        );
      }).toList(),
    );
  }
}
