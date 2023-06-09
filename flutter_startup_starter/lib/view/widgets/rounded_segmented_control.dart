import 'package:flutter/material.dart';
class RoundedSegmentedControl extends StatelessWidget {
  final List<String> items;
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const RoundedSegmentedControl({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: List.generate(items.length, (index) {
          final isSelected = index == selectedIndex;
          return Expanded(
            child: InkWell(
              onTap: () {
                onIndexChanged(index);
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFF878686) : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}