import 'package:dart_oo/classes/person.dart';
import 'package:dart_oo/services/notificationInterface.dart';

class NotificationEmail implements NotificationInterface {
  @override
  void sendNotification(Person person) {
    print('Sending EMAIL notification to ${person.getName()}');
  }
}
