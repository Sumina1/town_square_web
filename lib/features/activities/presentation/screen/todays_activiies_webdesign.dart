import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/features/activities/presentation/widget/activity_card_wed_design.dart';
import 'package:townsquare/features/activities/presentation/widget/filter_bar.dart';

import 'package:townsquare/features/activities/presentation/widget/right_banner.dart';
import 'package:townsquare/features/activities/presentation/widget/side_menu.dart';

class TodaysActivitiesWebdesign extends StatelessWidget {
  const TodaysActivitiesWebdesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: Row(
        children: [
          const SideMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const   Text(
          'Tues, Nov 12',
          style: TextStyle(fontSize: 14, color: Color(0xFF9E9E9E)),
        ),
        SizedBox(height: 4.h),
        Text(
          'This week in Estepona',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
        ),
                    SizedBox(height: 16.h),
                  const  SearchBar(),
                    SizedBox(height: 16.h),
                    const FilterBar(),
                    SizedBox(height: 16.h),
                    Text(
                      'Today / tuesday',
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8.h),
                    ActivityCard(
                      time: '08:00 (60 min)',
                      activity: 'Beach Yoga',
                      location: 'La Playa de la Rada',
                      price: '9€',
                      spotsLeft: '8 spots left',
                      intensity: 'light',
                    ),
                    ActivityCard(
                      time: '09:00 (60 min)',
                      activity: 'Reformer Pilates',
                      location: 'Wellness Studios',
                      price: '15€',
                      spotsLeft: '4 spots left',
                      intensity: 'medium',
                      childcare: true,
                    ),
                    ActivityCard(
                      time: '12:30 (45 min)',
                      activity: '5-a-side Football',
                      location: 'Municipal Sports Center',
                      price: '19€',
                      spotsLeft: '0 spots left',
                      intensity: 'high',
                      soldOut: true,
                    ),
                    ActivityCard(
                      time: '13:15 (60 min)',
                      activity: 'Standing Tapas Lunch',
                      location: 'Casa Marina',
                      price: '15€',
                      spotsLeft: '8 spots left',
                    ),
                    ActivityCard(
                      time: '15:00 (Drop-in until 20:00)',
                      activity: 'Kids LEGO Club',
                      location: 'La Bloqueria',
                      price: '10€/hour',
                      spotsLeft: '5 spots left',
                      childcare: true,
                      workspace: true,
                    ),
                    ActivityCard(
                      time: '16:00 (60 min)',
                      activity: '5-a-side Football',
                      location: 'Municipal Sports Center',
                      price: '10€/hour',
                      spotsLeft: '7 spots left',
                      intensity: 'high',
                      childcare: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
       const   RightBanner(),
        ],
      ),
    );
  }
}








