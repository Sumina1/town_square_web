import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterBar extends StatelessWidget {
  final String selectedFilter;
  final Function(String) onFilterSelected;

  const FilterBar({
    Key? key,
    required this.selectedFilter,
    required this.onFilterSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterChip(
          label: const Text('All'),
          selected: selectedFilter == 'all',
          onSelected: (_) => onFilterSelected('all'),
          backgroundColor: Colors.white,
          selectedColor: Colors.black12,
        ),
        SizedBox(width: 8.w),
        FilterChip(
          label: const Text('Sports'),
          selected: selectedFilter == 'Sports',
          onSelected: (_) => onFilterSelected('Sports'),
        ),
        SizedBox(width: 8.w),
        FilterChip(
          label: const Text('Food'),
          selected: selectedFilter == 'Food',
          onSelected: (_) => onFilterSelected('Food'),
        ),
        SizedBox(width: 8.w),
        FilterChip(
          label: const Text('Kids'),
          selected: selectedFilter == 'Kids',
          onSelected: (_) => onFilterSelected('Kids'),
        ),
        SizedBox(width: 8.w),
        FilterChip(
          label: const Text('Creative'),
          selected: selectedFilter == 'Creative',
          onSelected: (_) => onFilterSelected('Creative'),
        ),
      ],
    );
  }
}
