class Activity {
  final String time;
  final String duration;
  final String title;
  final String location;
  final int spotsLeft;
  final double price;
  final String intensity;
  final List<String> categories;
  final bool childcare;

  Activity({
    required this.time,
    required this.duration,
    required this.title,
    required this.location,
    required this.spotsLeft,
    required this.price,
    required this.intensity,
    required this.categories,
    this.childcare = false,
  });
}
