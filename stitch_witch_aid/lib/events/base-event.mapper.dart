// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'base-event.dart';

class BaseEventMapper extends ClassMapperBase<BaseEvent> {
  BaseEventMapper._();

  static BaseEventMapper? _instance;
  static BaseEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BaseEvent';

  static String _$eventType(BaseEvent v) => v.eventType;
  static const Field<BaseEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(BaseEvent v) => v.requestId;
  static const Field<BaseEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<BaseEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  static BaseEvent _instantiate(DecodingData data) {
    return BaseEvent(data.dec(_f$eventType), data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static BaseEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseEvent>(map);
  }

  static BaseEvent fromJson(String json) {
    return ensureInitialized().decodeJson<BaseEvent>(json);
  }
}

mixin BaseEventMappable {
  String toJson() {
    return BaseEventMapper.ensureInitialized()
        .encodeJson<BaseEvent>(this as BaseEvent);
  }

  Map<String, dynamic> toMap() {
    return BaseEventMapper.ensureInitialized()
        .encodeMap<BaseEvent>(this as BaseEvent);
  }

  BaseEventCopyWith<BaseEvent, BaseEvent, BaseEvent> get copyWith =>
      _BaseEventCopyWithImpl<BaseEvent, BaseEvent>(
          this as BaseEvent, $identity, $identity);
  @override
  String toString() {
    return BaseEventMapper.ensureInitialized()
        .stringifyValue(this as BaseEvent);
  }

  @override
  bool operator ==(Object other) {
    return BaseEventMapper.ensureInitialized()
        .equalsValue(this as BaseEvent, other);
  }

  @override
  int get hashCode {
    return BaseEventMapper.ensureInitialized().hashValue(this as BaseEvent);
  }
}

extension BaseEventValueCopy<$R, $Out> on ObjectCopyWith<$R, BaseEvent, $Out> {
  BaseEventCopyWith<$R, BaseEvent, $Out> get $asBaseEvent =>
      $base.as((v, t, t2) => _BaseEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BaseEventCopyWith<$R, $In extends BaseEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? eventType, String? requestId});
  BaseEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BaseEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BaseEvent, $Out>
    implements BaseEventCopyWith<$R, BaseEvent, $Out> {
  _BaseEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BaseEvent> $mapper =
      BaseEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  BaseEvent $make(CopyWithData data) => BaseEvent(
      data.get(#eventType, or: $value.eventType),
      data.get(#requestId, or: $value.requestId));

  @override
  BaseEventCopyWith<$R2, BaseEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BaseEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
