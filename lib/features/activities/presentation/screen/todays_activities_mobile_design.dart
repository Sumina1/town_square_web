import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';

import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/widget/filter_bar.dart';

class _Constants {
  static const backgroundColor = Color(0xFFFBFBFB);
  static const bannerColor = Color(0xFFBAE6FD);
  static const progressColor = Color(0xFF6ABEF6);

  static const intensityColors = {
    'light': Color(0xFFD5F1FF),
    'medium': Color(0xFFF3E8FF),
    'high': Color(0xFFFFEAD1),
  };

  static const intensityTextColors = {
    'light': Color(0xFF65B5DB),
    'medium': Color(0xFFC9A4F2),
    'high': Color(0xFFDC974F),
  };
}

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
          backgroundColor: _Constants.backgroundColor,
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
                  // BuildText(
                  //   text: 'This week in Estepona',
                  //   fontSize: 20.sp,
                  //   fontWeight: FontWeight.w500,
                  // ),
                  // SizedBox(height: 18.h),
                  state.status == ActivitiesStatus.loading
                      ? const Center(child: CircularProgressIndicator())
                      : state.status == ActivitiesStatus.failure
                          ? Center(
                              child: Text(state.errorMessage ??
                                  'Error loading activities'))
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BannerWidget(),
                                SizedBox(height: 16.h),
                                const SearchBar(),
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
                                                        return ActivityCard(
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
          bottomNavigationBar: const MenuBar(),
        );
      },
    );
  }
}

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = size.width;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: _Constants.bannerColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: 'You’re close to your goal!',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 7.h),
                BuildText(
                  text: 'Join more sport activities to collect more points',
                  fontSize: 12.sp,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        minimumSize: Size(63.w, 22.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.r),
                            bottomLeft: Radius.circular(4.r),
                            topRight: Radius.circular(4.r),
                            bottomRight: Radius.circular(4.r),
                          ),
                        ),
                      ),
                      child: BuildText(
                        text: 'Join now',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        minimumSize: Size(63.w, 22.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.r),
                            bottomLeft: Radius.circular(4.r),
                            topRight: Radius.circular(4.r),
                            bottomRight: Radius.circular(4.r),
                          ),
                        ),
                      ),
                      child: BuildText(
                        text: 'My points',
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 38.r,
            lineWidth: 8.r,
            animation: true,
            percent: 0.5,
            center: BuildText(
              text: '27%',
              fontSize: 25.sp,
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color(0xFFFFFFFF),
            progressColor: _Constants.progressColor,
            circularStrokeCap: CircularStrokeCap.round,
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 41.87.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 3),
            blurRadius: 8.r,
            color: const Color(0x1F000000),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What do you feel like doing?',
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          SvgIcon(
            assetPath: AssetPaths.searchSvg,
            size: 24.w,
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String time;
  final String activity;
  final String location;
  final String price;
  final String spotsLeft;
  final String intensity;
  final String duration;
  final bool childcare;
  final bool soldOut;

  const ActivityCard({
    super.key,
    required this.time,
    required this.activity,
    required this.location,
    required this.price,
    required this.spotsLeft,
    required this.intensity,
    required this.duration,
    this.childcare = false,
    this.soldOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: time,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: ' ($duration)',
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w),
              BuildText(
                text: activity,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 4.w),
              Row(
                children: [
                  SvgIcon(
                    assetPath: AssetPaths.mapPinSvg,
                    size: 14.w,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 4.w),
                  BuildText(
                    text: location,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Row(
                      children: [
                        SvgIcon(
                          assetPath: AssetPaths.personSvg,
                          size: 10.w,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 4.w),
                        BuildText(
                          text: spotsLeft,
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.w),
                    decoration: BoxDecoration(
                      color: _Constants.intensityColors[intensity],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: BuildText(
                      text: intensity,
                      fontSize: 10.sp,
                      color: _Constants.intensityTextColors[intensity],
                    ),
                  ),
                  if (childcare)
                    Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFD8F7DF),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: BuildText(
                          text: 'childcare',
                          fontSize: 10.sp,
                          color: const Color(0xFF8AB58A),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              BuildText(
                text: price,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 8.h),
              ElevatedButton(
                onPressed: soldOut
                    ? null
                    : () {
                        if (context.read<ActivitiesCubit>().state.status ==
                            ActivitiesStatus.loading) {
                          context
                              .read<ActivitiesCubit>()
                              .joinActivity(activity);
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  minimumSize: Size(58.w, 33.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.r),
                      bottomLeft: Radius.circular(6.r),
                      topRight: Radius.circular(6.r),
                      bottomRight: Radius.circular(6.r),
                    ),
                  ),
                ),
                child: context.read<ActivitiesCubit>().state.status ==
                        ActivitiesStatus.loading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : BuildText(
                        text: soldOut ? 'Sold out' : 'Join',
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const SvgIcon(
                  assetPath: AssetPaths.calendarSvg, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const SvgIcon(
                assetPath: AssetPaths.mapSvg,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFFBAE6FD),
              child: SizedBox(
                width: 35.w,
                height: 35.h,
                child: const Icon(Icons.add, color: Colors.black),
              ),
            ),
            IconButton(
              icon: const SvgIcon(
                assetPath: AssetPaths.users,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const SvgIcon(
                assetPath: AssetPaths.starSvg,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
