// import 'package:flutter/material.dart';



// class TodaysActivitiesMobileDesign extends StatelessWidget {
//   const TodaysActivitiesMobileDesign({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFBFBFB),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text(
//           'This week in Estepona',
//           style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications, color: Colors.black),
//             onPressed: () {},
//           ),
//           CircleAvatar(
//             backgroundImage: AssetImage('assets/profile.jpg'),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerWidget(),
//               SizedBox(height: 16),
//               SearchBar(),
//               SizedBox(height: 16),
//               FilterBar(),
//               SizedBox(height: 16),
//               Text(
//                 'Today / tuesday',
//                 style: TextStyle(fontSize: 14.97, fontWeight: FontWeight.w500),
//               ),
//               SizedBox(height: 8),
//               ActivityCard(
//                 time: '08:00 (60 min)',
//                 activity: 'Beach Yoga',
//                 location: 'La Playa de la Rada',
//                 price: '9€',
//                 spotsLeft: '8 spots left',
//                 intensity: 'light',
//               ),
//               ActivityCard(
//                 time: '09:00 (60 min)',
//                 activity: 'Reformer Pilates',
//                 location: 'Wellness Studio',
//                 price: '15€',
//                 spotsLeft: '3 spots left',
//                 intensity: 'medium',
//                 childcare: true,
//               ),
//               ActivityCard(
//                 time: '12:30 (45 min)',
//                 activity: '5-a-side Football',
//                 location: 'Municipal Sports Center',
//                 price: '19€',
//                 spotsLeft: '0 spots left',
//                 intensity: 'high',
//                 soldOut: true,
//               ),
//               // Add more ActivityCards here
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: MenuBar(),
//     );
//   }
// }

// // class BannerWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.all(16),
// //       decoration: BoxDecoration(
// //         color: Color(0xFFBAE6FD),
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 'You’re close to your goal!',
// //                 style: TextStyle(
// //                   fontSize: 16,
// //                   fontWeight: FontWeight.w500,
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               Text(
// //                 'Join more sport activities to collect more points',
// //                 style: TextStyle(fontSize: 12),
// //               ),
// //               SizedBox(height: 16),
// //               Row(
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () {},
// //                     child: Text('Join now'),
// //                     style: ElevatedButton.styleFrom(
// //                       primary: Colors.black,
// //                     ),
// //                   ),
// //                   SizedBox(width: 8),
// //                   ElevatedButton(
// //                     onPressed: () {},
// //                     child: Text('My points'),
// //                     style: ElevatedButton.styleFrom(
// //                       primary: Colors.black,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //           CircleAvatar(
// //             radius: 36,
// //             backgroundColor: Colors.white,
// //             child: Text(
// //               '27',
// //               style: TextStyle(
// //                 fontSize: 25,
// //                 fontWeight: FontWeight.w500,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// class SearchBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'What do you feel like doing?',
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           Icon(Icons.search),
//         ],
//       ),
//     );
//   }
// }

// class FilterBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           FilterChip(label: Text('All'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Sports'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Food'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Kids'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Creative'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Popular'), onSelected: (_) {}),
//           SizedBox(width: 8),
//           FilterChip(label: Text('Calm'), onSelected: (_) {}),
//         ],
//       ),
//     );
//   }
// }

// class ActivityCard extends StatelessWidget {
//   final String time;
//   final String activity;
//   final String location;
//   final String price;
//   final String spotsLeft;
//   final String intensity;
//   final bool childcare;
//   final bool soldOut;

//   ActivityCard({
//     required this.time,
//     required this.activity,
//     required this.location,
//     required this.price,
//     required this.spotsLeft,
//     required this.intensity,
//     this.childcare = false,
//     this.soldOut = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       margin: EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(time, style: TextStyle(fontSize: 12)),
//               SizedBox(height: 4),
//               Text(activity, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//               SizedBox(height: 4),
//               Row(
//                 children: [
//                   Icon(Icons.location_on, size: 14, color: Colors.grey),
//                   SizedBox(width: 4),
//                   Text(location, style: TextStyle(fontSize: 12, color: Colors.grey)),
//                 ],
//               ),
//               SizedBox(height: 8),
//               Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFF1F1F1),
//                       borderRadius: BorderRadius.circular(2),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.person, size: 10, color: Colors.grey),
//                         SizedBox(width: 4),
//                         Text(spotsLeft, style: TextStyle(fontSize: 10, color: Colors.grey)),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 4),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: intensity == 'light' ? Color(0xFFD5F1FF) : intensity == 'medium' ? Color(0xFFF3E8FF) : Color(0xFFFFEAD1),
//                       borderRadius: BorderRadius.circular(2),
//                     ),
//                     child: Text(intensity, style: TextStyle(fontSize: 10, color: intensity == 'light' ? Color(0xFF65B5DB) : intensity == 'medium' ? Color(0xFFC9A4F2) : Color(0xFFDC974F))),
//                   ),
//                   if (childcare)
//                     Padding(
//                       padding: const EdgeInsets.only(left: 4.0),
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//                         decoration: BoxDecoration(
//                           color: Color(0xFFD8F7DF),
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                         child: Text('childcare', style: TextStyle(fontSize: 10, color: Color(0xFF8AB58A))),
//                       ),
//                     ),
//                 ],
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Text(price, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//               SizedBox(height: 8),
//               ElevatedButton(
//                 onPressed: soldOut ? null : () {},
//                 child: Text(soldOut ? 'Sold out' : 'Join'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MenuBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               icon: Icon(Icons.calendar_today),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.map),
//               onPressed: () {},
//             ),
//             FloatingActionButton(
//               onPressed: () {},
//               child: Icon(Icons.add),
//               backgroundColor: Colors.blue,
//             ),
//             IconButton(
//               icon: Icon(Icons.group),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.star),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }