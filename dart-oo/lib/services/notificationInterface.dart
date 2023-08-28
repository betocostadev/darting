import 'package:dart_oo/classes/person.dart';

// Using an Interface (in dart is an abstract class)
// The interface will have the need of the sendNotification method
// But it doesn't implements it
abstract class NotificationInterface {
  void sendNotification(Person person);
}
