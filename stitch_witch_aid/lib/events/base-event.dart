import 'package:dart_mappable/dart_mappable.dart';

part 'base-event.mapper.dart';

@MappableClass(discriminatorKey: 'eventType')
class BaseEvent with BaseEventMappable {
  String eventType;
  String requestId;

  BaseEvent(this.eventType, this.requestId);
}