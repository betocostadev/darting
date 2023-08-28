import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/services/notificationInterface.dart';

class NotificationSMS implements NotificationInterface {
  @override
  void sendNotification(Person person) {
    print('Sending SMS notification to ${person.getName()}');
  }
}
