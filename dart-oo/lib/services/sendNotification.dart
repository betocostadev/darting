import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/enum/type_notification.dart';
import 'package:dart_oo/services/impl/notificationEmail.dart';
import 'package:dart_oo/services/impl/notificationPush.dart';
import 'package:dart_oo/services/impl/notificationSMS.dart';
import 'package:dart_oo/services/notificationInterface.dart';

class SendNotification {
  NotificationInterface? notification;

  void notify(Person person) {
    switch (person.getTypeNotification()) {
      case TypeNotification.SMS:
        notification = NotificationSMS();
        break;
      case TypeNotification.PUSH_NOTIFICATION:
        notification = NotificationPush();
        break;
      case TypeNotification.EMAIL:
        notification = NotificationEmail();
        break;
      default:
        return;
    }

    notification?.sendNotification(person);
  }
}
