import 'package:fancy_notifications/fancy_notifications.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fancy Notifications Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              NotificationService.showNotification(
                context ,
                'New Message!',
                'You have a new chat message from John.',
              );
            },
            child: Text('Show Notification'),
          ),
        ),
      ),
    );
  }
}
