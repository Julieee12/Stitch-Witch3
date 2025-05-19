// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server-sends-all-tags-for-item-event.dart';

class ServerSendsAllTagsFromItemEventMapper
    extends SubClassMapperBase<ServerSendsAllTagsFromItemEvent> {
  ServerSendsAllTagsFromItemEventMapper._();

  static ServerSendsAllTagsFromItemEventMapper? _instance;
  static ServerSendsAllTagsFromItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllTagsFromItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ItemTagModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllTagsFromItemEvent';

  static List<ItemTagModel> _$tagsForItem(ServerSendsAllTagsFromItemEvent v) =>
      v.tagsForItem;
  static const Field<ServerSendsAllTagsFromItemEvent, List<ItemTagModel>>
      _f$tagsForItem = Field('tagsForItem', _$tagsForItem);
  static String _$eventType(ServerSendsAllTagsFromItemEvent v) => v.eventType;
  static const Field<ServerSendsAllTagsFromItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllTagsFromItemEvent v) => v.requestId;
  static const Field<ServerSendsAllTagsFromItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllTagsFromItemEvent> fields = const {
    #tagsForItem: _f$tagsForItem,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllTagsFromItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllTagsFromItemEvent _instantiate(DecodingData data) {
    return ServerSendsAllTagsFromItemEvent(
        tagsForItem: data.dec(_f$tagsForItem),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllTagsFromItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllTagsFromItemEvent>(map);
  }

  static ServerSendsAllTagsFromItemEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsAllTagsFromItemEvent>(json);
  }
}

mixin ServerSendsAllTagsFromItemEventMappable {
  String toJson() {
    return ServerSendsAllTagsFromItemEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllTagsFromItemEvent>(
            this as ServerSendsAllTagsFromItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllTagsFromItemEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllTagsFromItemEvent>(
            this as ServerSendsAllTagsFromItemEvent);
  }

  ServerSendsAllTagsFromItemEventCopyWith<ServerSendsAllTagsFromItemEvent,
          ServerSendsAllTagsFromItemEvent, ServerSendsAllTagsFromItemEvent>
      get copyWith => _ServerSendsAllTagsFromItemEventCopyWithImpl<
              ServerSendsAllTagsFromItemEvent, ServerSendsAllTagsFromItemEvent>(
          this as ServerSendsAllTagsFromItemEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllTagsFromItemEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllTagsFromItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllTagsFromItemEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllTagsFromItemEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllTagsFromItemEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllTagsFromItemEvent);
  }
}

extension ServerSendsAllTagsFromItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllTagsFromItemEvent, $Out> {
  ServerSendsAllTagsFromItemEventCopyWith<$R, ServerSendsAllTagsFromItemEvent,
          $Out>
      get $asServerSendsAllTagsFromItemEvent => $base.as((v, t, t2) =>
          _ServerSendsAllTagsFromItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllTagsFromItemEventCopyWith<
    $R,
    $In extends ServerSendsAllTagsFromItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemTagModel,
      ItemTagModelCopyWith<$R, ItemTagModel, ItemTagModel>> get tagsForItem;
  @override
  $R call(
      {List<ItemTagModel>? tagsForItem, String? eventType, String? requestId});
  ServerSendsAllTagsFromItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllTagsFromItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllTagsFromItemEvent, $Out>
    implements
        ServerSendsAllTagsFromItemEventCopyWith<$R,
            ServerSendsAllTagsFromItemEvent, $Out> {
  _ServerSendsAllTagsFromItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllTagsFromItemEvent> $mapper =
      ServerSendsAllTagsFromItemEventMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ItemTagModel,
          ItemTagModelCopyWith<$R, ItemTagModel, ItemTagModel>>
      get tagsForItem => ListCopyWith($value.tagsForItem,
          (v, t) => v.copyWith.$chain(t), (v) => call(tagsForItem: v));
  @override
  $R call(
          {List<ItemTagModel>? tagsForItem,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (tagsForItem != null) #tagsForItem: tagsForItem,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllTagsFromItemEvent $make(CopyWithData data) =>
      ServerSendsAllTagsFromItemEvent(
          tagsForItem: data.get(#tagsForItem, or: $value.tagsForItem),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllTagsFromItemEventCopyWith<$R2, ServerSendsAllTagsFromItemEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsAllTagsFromItemEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
}
