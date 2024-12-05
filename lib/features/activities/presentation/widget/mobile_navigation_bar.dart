import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';

class MobileNavigationBar extends StatelessWidget {
  const MobileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesCubit, ActivitiesState>(
      builder: (context, state) {
        return BottomAppBar(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: SvgIcon(
                    assetPath: AssetPaths.calendarSvg,
                    color:
                        state.selectedIndex == 0 ? Colors.blue : Colors.black,
                  ),
                  onPressed: () =>
                      context.read<ActivitiesCubit>().onTabSelected(0),
                ),
                IconButton(
                  icon: SvgIcon(
                    assetPath: AssetPaths.mapSvg,
                    color:
                        state.selectedIndex == 1 ? Colors.blue : Colors.black,
                  ),
                  onPressed: () =>
                      context.read<ActivitiesCubit>().onTabSelected(1),
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<ActivitiesCubit>().onTabSelected(2),
                  shape: const CircleBorder(),
                  backgroundColor: state.selectedIndex == 2
                      ? const Color(0xFF90CDE3) // Darker shade when selected
                      : const Color(0xFFBAE6FD),
                  child: SizedBox(
                    width: 35.w,
                    height: 35.h,
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: SvgIcon(
                    assetPath: AssetPaths.users,
                    color:
                        state.selectedIndex == 3 ? Colors.blue : Colors.black,
                  ),
                  onPressed: () =>
                      context.read<ActivitiesCubit>().onTabSelected(3),
                ),
                IconButton(
                  icon: SvgIcon(
                    assetPath: AssetPaths.starSvg,
                    color:
                        state.selectedIndex == 4 ? Colors.blue : Colors.black,
                  ),
                  onPressed: () =>
                      context.read<ActivitiesCubit>().onTabSelected(4),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
