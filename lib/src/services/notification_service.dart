import 'package:flutter/material.dart';
import 'package:fancy_notifications/src/ui/notification_widget.dart';

class NotificationService {
  static void showNotification(
    BuildContext context,
    String title,
    String message,
  ) {
    showDialog(
      context: context,
      builder: (context) => FancyNotificationWidget(
        title: title,
        message: message,
      ),
    );
  }
}
