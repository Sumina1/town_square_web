import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activities_mobile_design.dart';
import 'package:townsquare/features/activities/presentation/widget/activity_card_wed_design.dart';
import 'package:townsquare/features/activities/presentation/widget/appText_field.dart';

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
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 30.w, right: 30.w, bottom: 16.h, top: 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BuildText(
                            text: DateFormat('EEEE').format(DateTime.now()),
                            fontSize: 14.97.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                          BuildText(
                            text:
                                ', ${DateFormat('MMM d').format(DateTime.now())}',
                            fontSize: 14.97.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      BuildText(
                        text: 'This week in Estepona',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        family: 'SF-Pro',
                      ),
                      state.status == ActivitiesStatus.loading
                          ? const Center(child: CircularProgressIndicator())
                          : state.status == ActivitiesStatus.failure
                              ? Center(
                                  child: Text(state.errorMessage ??
                                      'Error loading activities'))
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 16.h),
                                    const AppTextField(),
                                    SizedBox(height: 16.h),
                                    Row(
                                      children: [
                                        SvgIcon(
                                          assetPath: AssetPaths.filterSvg,
                                          size: 30.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        FilterBar(
                                          selectedFilter:
                                              state.selectedCategory,
                                          onFilterSelected: (filter) {
                                            context
                                                .read<ActivitiesCubit>()
                                                .changeCategory(filter);
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16.h),

                                    // SizedBox(height: 8.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 6.h),
                                          child: Column(
                                            children: [
                                              SvgIcon(
                                                assetPath:
                                                    AssetPaths.imageCircle,
                                                size: 10.w,
                                              ),
                                              SizedBox(
                                                height: state.filteredActivities
                                                        .isEmpty
                                                    ? 50.h
                                                    : state.filteredActivities
                                                            .length *
                                                        115.h,
                                                width: 1.w,
                                                child: CustomPaint(
                                                  painter:
                                                      DashedLineVerticalPainter(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 4.w),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text.rich(
                                                  TextSpan(
                                                    text: 'Today/',
                                                    style: TextStyle(
                                                      fontSize: 14.97.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: DateFormat('EEEE')
                                                            .format(
                                                                DateTime.now()),
                                                        style: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                AnimatedSwitcher(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  child: state
                                                          .filteredActivities
                                                          .isEmpty
                                                      ? const Center(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16.0),
                                                            child: Text(
                                                              'No activities available',
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      : ListView.builder(
                                                          key: ValueKey<String>(
                                                              state
                                                                  .selectedCategory),
                                                          shrinkWrap: true,
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          itemCount: state
                                                              .filteredActivities
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            final activity =
                                                                state.filteredActivities[
                                                                    index];
                                                            return ActivityCardWedDesign(
                                                              category: state
                                                                  .selectedCategory,
                                                              time:
                                                                  activity.time,
                                                              duration: activity
                                                                  .duration,
                                                              activity: activity
                                                                  .title,
                                                              location: activity
                                                                  .location,
                                                              price:
                                                                  '${activity.price.toStringAsFixed(0)}€',
                                                              spotsLeft:
                                                                  '${activity.spotsLeft} spots left',
                                                              intensity: activity
                                                                  .intensity,
                                                              childcare: activity
                                                                  .childcare,
                                                              soldOut: activity
                                                                      .spotsLeft ==
                                                                  0,
                                                            );
                                                          },
                                                        ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 50.h),
                child: const RightBanner(),
              ),
            ],
          ),
        );
      },
    );
  }
}
