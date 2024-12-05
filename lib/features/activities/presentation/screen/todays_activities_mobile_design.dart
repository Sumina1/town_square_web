import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:townsquare/core/constants/app_color_constant.dart';

import 'package:townsquare/core/constants/asset_paths.dart';

import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/screen/dash_indicator.dart';
import 'package:townsquare/features/activities/presentation/widget/appText_field.dart';

import 'package:townsquare/features/activities/presentation/widget/index.dart';

class TodaysActivitiesMobileDesign extends StatelessWidget {
  const TodaysActivitiesMobileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodaysActivitiesView();
  }
}

class TodaysActivitiesView extends StatelessWidget {
  const TodaysActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesCubit, ActivitiesState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColorConstant.backgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
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
                      text: ', ${DateFormat('MMM d').format(DateTime.now())}',
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
                ),
              ],
            ),
            actions: [
              const SvgIcon(assetPath: AssetPaths.bellSvg, color: Colors.black),
              SizedBox(width: 12.w),
              Image.asset(AssetPaths.profileUser),
              SizedBox(width: 16.w),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 24.0,
                top: 18.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  state.status == ActivitiesStatus.loading
                      ? const Center(child: CircularProgressIndicator())
                      : state.status == ActivitiesStatus.failure
                          ? Center(
                              child: Text(state.errorMessage ??
                                  'Error loading activities'))
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const MobileBannerWidget(),
                                SizedBox(height: 16.h),
                                const AppTextField(),
                                SizedBox(height: 16.h),
                                FilterBar(
                                  selectedFilter: state.selectedCategory,
                                  onFilterSelected: (filter) {
                                    context
                                        .read<ActivitiesCubit>()
                                        .changeCategory(filter);
                                  },
                                ),
                                SizedBox(height: 16.h),

                                // SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 6.h),
                                      child: Column(
                                        children: [
                                          SvgIcon(
                                            assetPath: AssetPaths.imageCircle,
                                            size: 10.w,
                                          ),
                                          SizedBox(
                                            height:
                                                state.filteredActivities.isEmpty
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
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: DateFormat('EEEE')
                                                        .format(DateTime.now()),
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
                                              child: state.filteredActivities
                                                      .isEmpty
                                                  ? const Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Text(
                                                          'No activities available',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  : ListView.builder(
                                                      key: ValueKey<String>(state
                                                          .selectedCategory),
                                                      shrinkWrap: true,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      itemCount: state
                                                          .filteredActivities
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final activity = state
                                                                .filteredActivities[
                                                            index];
                                                        return MobileActivityCard(
                                                          time: activity.time,
                                                          duration:
                                                              activity.duration,
                                                          activity:
                                                              activity.title,
                                                          location:
                                                              activity.location,
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
          bottomNavigationBar: const MobileNavigationBar(),
        );
      },
    );
  }
}
