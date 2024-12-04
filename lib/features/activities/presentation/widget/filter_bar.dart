import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FilterChip(label: Text('All'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Sports'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Food'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Kids'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Creative'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Popular'), onSelected: (_) {}),
          SizedBox(width: 8.w),
          FilterChip(label: Text('Calm'), onSelected: (_) {}),
        ],
      ),
    );
  }
}
