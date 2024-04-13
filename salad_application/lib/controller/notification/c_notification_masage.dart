part of './../../import/import.dart';

class CNotificationMasage {
  /// [firebasemassaging] show the massage to user when app is open
  static Future<void> firebasemassaging(RemoteMessage message) async {
    developer.log(message.messageId ?? '1231231231');
  }

  /// [requestMassaging] show the massage to user allowed notifiaction or not

  static void requestMassaging() async {
    FirebaseMessaging masseging = FirebaseMessaging.instance;
    NotificationSettings settings = await masseging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      developer.log('authorized');
    }
  }
}
