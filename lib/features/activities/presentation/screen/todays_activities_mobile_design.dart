import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';

class TodaysActivitiesMobileDesign extends StatelessWidget {
  const TodaysActivitiesMobileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: BuildText(
          text: 'This week in Estepona',
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          const SvgIcon(assetPath: AssetPaths.bellSvg, color: Colors.black),
          SizedBox(width: 16.w),
          const SvgIcon(
            assetPath: AssetPaths.profileSvg,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerWidget(),
              SizedBox(height: 16.h),
              SearchBar(),
              SizedBox(height: 16.h),
              FilterBar(),
              SizedBox(height: 16.h),
              BuildText(
                text: 'Today / tuesday',
                fontSize: 14.97.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 8.h),
              const ActivityCard(
                time: '08:00 (60 min)',
                activity: 'Beach Yoga',
                location: 'La Playa de la Rada',
                price: '9€',
                spotsLeft: '8 spots left',
                intensity: 'light',
              ),
              const ActivityCard(
                time: '09:00 (60 min)',
                activity: 'Reformer Pilates',
                location: 'Wellness Studio',
                price: '15€',
                spotsLeft: '3 spots left',
                intensity: 'medium',
                childcare: true,
              ),
              const ActivityCard(
                time: '12:30 (45 min)',
                activity: '5-a-side Football',
                location: 'Municipal Sports Center',
                price: '19€',
                spotsLeft: '0 spots left',
                intensity: 'high',
                soldOut: true,
              ),
              // Add more ActivityCards here
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MenuBar(),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Color(0xFFBAE6FD),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildText(
                text: 'You’re close to your goal!',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 16.h),
              BuildText(
                text: 'Join more sport activities to collect more points',
                fontSize: 12.sp,
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: BuildText(
                      text: 'Join now',
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: BuildText(
                      text: 'My points',
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: CircularPercentIndicator(
              radius: 38.r,
              lineWidth: 8.r,
              animation: true,
              percent: 0.5,
              center: BuildText(
                text: '27%',
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
              ),
              backgroundColor: Colors.white.withOpacity(0.3),
              progressColor: const Color(0xFF6ABEF6),
              circularStrokeCap: CircularStrokeCap.round,
            ),
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
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Container(
        width: 345.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.r),
            bottomLeft: Radius.circular(6.r),
          ),
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
      ),
    );
  }
}

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            //
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
            label: SvgIcon(
              assetPath: AssetPaths.sliderSvg,
              size: 12.w,
            ),
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: BuildText(
              text: 'All',
              fontSize: 12.sp,
              color: Colors.black,
            ),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Sports'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Food'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Kids'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Creative'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Popular'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
          ),
          SizedBox(width: 8.w),
          FilterChip(
            selectedColor: const Color(0xFFBAA1C8), // Add selected color
            label: const BuildText(text: 'Calm'),
            backgroundColor: const Color(0xFFEEE1F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            onSelected: (_) {},
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
  final bool childcare;
  final bool soldOut;

  const ActivityCard({
    required this.time,
    required this.activity,
    required this.location,
    required this.price,
    required this.spotsLeft,
    required this.intensity,
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
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildText(
                text: time,
                fontSize: 12.sp,
              ),
              SizedBox(height: 4.w),
              BuildText(
                text: activity,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.w),
                    decoration: BoxDecoration(
                      color: intensity == 'light'
                          ? Color(0xFFD5F1FF)
                          : intensity == 'medium'
                              ? Color(0xFFF3E8FF)
                              : Color(0xFFFFEAD1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: BuildText(
                      text: intensity,
                      fontSize: 10.sp,
                      color: intensity == 'light'
                          ? Color(0xFF65B5DB)
                          : intensity == 'medium'
                              ? Color(0xFFC9A4F2)
                              : Color(0xFFDC974F),
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
                onPressed: () {},
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
                child: BuildText(
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
