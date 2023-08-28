import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/services/notificationInterface.dart';

class NotificationPush implements NotificationInterface {
  @override
  void sendNotification(Person person) {
    print('Sending PUSH notification to ${person.getName()}');
  }
}
