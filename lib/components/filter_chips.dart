import 'package:flutter/material.dart';

class FilterChips extends StatefulWidget {
  final List<String> filters;
  final int initialSelectedIndex;
  final Function(int)? onFilterChanged;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedTextColor;
  final Color? unselectedTextColor;

  const FilterChips({
    super.key,
    required this.filters,
    this.initialSelectedIndex = 0,
    this.onFilterChanged,
    this.selectedColor,
    this.unselectedColor,
    this.selectedTextColor,
    this.unselectedTextColor,
  });

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  late int _selectedFilter;

  @override
  void initState() {
    super.initState();
    _selectedFilter = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: widget.unselectedColor ?? Colors.grey[200],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(widget.filters.length, (index) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedFilter = index;
                  });
                  widget.onFilterChanged?.call(index);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: _selectedFilter == index
                        ? (widget.selectedColor ?? Colors.blue)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    widget.filters[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _selectedFilter == index
                          ? (widget.selectedTextColor ?? Colors.white)
                          : (widget.unselectedTextColor ?? Colors.black54),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
