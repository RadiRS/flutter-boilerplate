import 'package:flutter_local_notifications/flutter_local_notifications.dart';

mixin LocalNotificationService {
  static final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: IOSInitializationSettings(),
    );

    notificationsPlugin.initialize(initializationSettings);
  }

  static Future show(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      const NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          'flutter_local_notifications',
          'flutter_local_notifications_tutorial',
          importance: Importance.max,
          priority: Priority.high,
        ),
      );

      await notificationsPlugin.show(
        id,
        message.title,
        message.body,
        notificationDetails,
      );
    } catch (e) {
      // ignore: avoid_print
      print('Error -----> $e');
    }
  }
}

class RemoteMessage {
  String? title;
  String? body;
  String? notification;

  RemoteMessage({this.title, this.body, this.notification});
}
