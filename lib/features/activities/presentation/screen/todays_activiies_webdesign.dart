import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activities_mobile_design.dart';

import 'package:townsquare/features/activities/presentation/widget/filter_bar.dart';

import 'package:townsquare/features/activities/presentation/widget/right_banner.dart';
import 'package:townsquare/features/activities/presentation/widget/side_menu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';

class TodaysActivitiesWebdesign extends StatelessWidget {
  const TodaysActivitiesWebdesign({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesCubit, ActivitiesState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFFBFBFB),
          body: Row(
            children: [
              const SideMenu(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildText(
                          text: 'Tues, Nov 12',
                          fontSize: 14.sp,
                          color: const Color(0xFF9E9E9E),
                        ),
                        SizedBox(height: 4.h),
                        BuildText(
                          text: 'This week in Estepona',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 16.h),
                        // SearchBar(onPressed: () {}),
                        SizedBox(height: 16.h),
                        FilterBar(
                          selectedFilter: state.selectedCategory,
                          onFilterSelected: (filter) {
                            context.read<ActivitiesCubit>().changeCategory(
                                filter == 'All' ? 'all' : filter);
                          },
                        ),
                        SizedBox(height: 16.h),
                        BuildText(
                          text: 'Today / tuesday',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 8.h),
                        if (state.status == ActivitiesStatus.loading)
                          const Center(child: CircularProgressIndicator()),
                        if (state.status == ActivitiesStatus.failure)
                          Center(
                            child:
                                Text(state.errorMessage ?? 'An error occurred'),
                          ),
                        if (state.status == ActivitiesStatus.success) ...[
                          if (state.filteredActivities.isEmpty)
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'No activities available',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          else
                            ...state.filteredActivities.map(
                              (activity) => ActivityCard(
                                time: activity.time,
                                activity: activity.title,
                                location: activity.location,
                                price: '${activity.price}€',
                                spotsLeft: '${activity.spotsLeft} spots left',
                                intensity: activity.intensity,
                                childcare: activity.childcare,
                                // workspace: activity.workspace,
                                // category: activity.categories.first,
                                soldOut: activity.spotsLeft == 0, duration: activity.duration,
                              ),
                            ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              const RightBanner(),
            ],
          ),
        );
      },
    );
  }
}
