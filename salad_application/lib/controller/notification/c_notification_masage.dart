part of './../../import/import.dart';

class CNotificationMasage {
  static Future<void> firebasemassaging(RemoteMessage message) async {
    developer.log(message.messageId ?? '1231231231');
  }

  static void requestMassaging() async {
    FirebaseMessaging masseging = FirebaseMessaging.instance;
    NotificationSettings settings = await masseging.requestPermission( alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      developer.log('authorized');
    }
  }
}
