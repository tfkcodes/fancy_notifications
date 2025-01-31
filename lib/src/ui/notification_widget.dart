import 'package:flutter/material.dart';

class FancyNotificationWidget extends StatelessWidget {
  final String title;
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final List<Widget> actions;
  final Duration duration;

  FancyNotificationWidget({
    required this.title,
    required this.message,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.actions = const [],
    this.duration = const Duration(seconds: 4),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.notifications, color: textColor),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                SizedBox(height: 4.0),
                Text(message, style: TextStyle(color: textColor)),
              ],
            ),
          ),
          ...actions,
        ],
      ),
    );
  }
}
