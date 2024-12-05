import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';

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
    final filters = ['all', 'Sports', 'Food', 'Kids', 'Creative'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters.map((filter) {
          final isSelected =
              selectedFilter.toLowerCase() == filter.toLowerCase();
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: AnimatedScale(
              duration: const Duration(milliseconds: 200),
              scale: isSelected ? 1.0 : 1.0,
              child: FilterChip(
                selected: isSelected,
                selectedColor: const Color(0xFFBAA1C8),
                label: BuildText(
                  text: filter == 'all' ? 'All' : filter,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                backgroundColor: const Color(0xFFEEE1F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                onSelected: (_) {
                  if (isSelected) {
                    onFilterSelected('all');
                  } else {
                    onFilterSelected(filter);
                  }
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
