import 'package:flutter_test/flutter_test.dart';
import 'package:fancy_notifications/fancy_notifications.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Test Fancy Notification Widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: FancyNotificationWidget(
          title: 'Test Title',
          message: 'Test Message',
        ),
      ),
    ));

    // Check if the title and message are displayed
    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Message'), findsOneWidget);
  });
}
