import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FilterChip(label: const BuildText(text: 'All'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(
              label: const BuildText(text: 'Sports'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: const BuildText(text: 'Food'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: const BuildText(text: 'Kids'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(
              label: const BuildText(text: 'Creative'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(
              label: const BuildText(text: 'Popular'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: const BuildText(text: 'Calm'), onSelected: (_) {}),
        ],
      ),
    );
  }
}
