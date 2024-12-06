// import 'package:flutter/material.dart';
// import '../models/activity.dart';
// import 'package:intl/intl.dart';

// class ActivityCard extends StatelessWidget {
//   final Activity activity;
//   final VoidCallback onJoin;

//   const ActivityCard({
//     Key? key,
//     required this.activity,
//     required this.onJoin,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.only(bottom: 16),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               activity.title,
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             const SizedBox(height: 8),
//             _buildInfoRow(
//               Icons.access_time,
//               '${DateFormat.jm().format(activity.time)} • ${activity.durationMinutes} min',
//             ),
//             _buildInfoRow(
//               Icons.location_on,
//               activity.location,
//             ),
//             _buildInfoRow(
//               Icons.person_outline,
//               '${activity.availableSpots} spots available',
//             ),
//             _buildInfoRow(
//               Icons.attach_money,
//               '\$${activity.price.toStringAsFixed(2)}',
//             ),
//             const SizedBox(height: 16),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: onJoin,
//                 child: const Text('Join'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoRow(IconData icon, String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         children: [
//           Icon(icon, size: 16),
//           const SizedBox(width: 8),
//           Text(text),
//         ],
//       ),
//     );
//   }
// } 