// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'events.dart';

class BaseEventMapper extends ClassMapperBase<BaseEvent> {
  BaseEventMapper._();

  static BaseEventMapper? _instance;
  static BaseEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseEventMapper._());
      ClientGetsAllItemsEventMapper.ensureInitialized();
      ClientCreatesNewItemEventMapper.ensureInitialized();
      ClientUpdatesItemEventMapper.ensureInitialized();
      ClientDeletesItemEventMapper.ensureInitialized();
      ClientGetsAllTagsFromItemEventMapper.ensureInitialized();
      ServerSendsCreatedItemEventMapper.ensureInitialized();
      ServerSendsUpdatedItemEventMapper.ensureInitialized();
      ClientGetsAllProjectsEventMapper.ensureInitialized();
      ClientCreatesNewProjectEventMapper.ensureInitialized();
      ClientDeletesProjectEventMapper.ensureInitialized();
      ClientUpdatesProjectEventMapper.ensureInitialized();
      ServerSendsAllProjectsEventMapper.ensureInitialized();
      ServerSendsAllItemsEventMapper.ensureInitialized();
      ServerSendsCreatedProjectEventMapper.ensureInitialized();
      ServerDeletedProjectEventMapper.ensureInitialized();
      ServerSendsUpdatedProjectEventMapper.ensureInitialized();
      ServerSendsErrorMessageEventMapper.ensureInitialized();
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
    throw MapperException.missingSubclass(
        'BaseEvent', 'eventType', '${data.value['eventType']}');
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
  String toJson();
  Map<String, dynamic> toMap();
  BaseEventCopyWith<BaseEvent, BaseEvent, BaseEvent> get copyWith;
}

abstract class BaseEventCopyWith<$R, $In extends BaseEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? eventType, String? requestId});
  BaseEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ClientGetsAllItemsEventMapper
    extends SubClassMapperBase<ClientGetsAllItemsEvent> {
  ClientGetsAllItemsEventMapper._();

  static ClientGetsAllItemsEventMapper? _instance;
  static ClientGetsAllItemsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllItemsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllItemsEvent';

  static String _$eventType(ClientGetsAllItemsEvent v) => v.eventType;
  static const Field<ClientGetsAllItemsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllItemsEvent v) => v.requestId;
  static const Field<ClientGetsAllItemsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllItemsEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllItemsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllItemsEvent _instantiate(DecodingData data) {
    return ClientGetsAllItemsEvent(
        eventType: data.dec(_f$eventType), requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllItemsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllItemsEvent>(map);
  }

  static ClientGetsAllItemsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientGetsAllItemsEvent>(json);
  }
}

mixin ClientGetsAllItemsEventMappable {
  String toJson() {
    return ClientGetsAllItemsEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllItemsEvent>(this as ClientGetsAllItemsEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllItemsEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllItemsEvent>(this as ClientGetsAllItemsEvent);
  }

  ClientGetsAllItemsEventCopyWith<ClientGetsAllItemsEvent,
          ClientGetsAllItemsEvent, ClientGetsAllItemsEvent>
      get copyWith => _ClientGetsAllItemsEventCopyWithImpl<
              ClientGetsAllItemsEvent, ClientGetsAllItemsEvent>(
          this as ClientGetsAllItemsEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllItemsEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllItemsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllItemsEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllItemsEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllItemsEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllItemsEvent);
  }
}

extension ClientGetsAllItemsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllItemsEvent, $Out> {
  ClientGetsAllItemsEventCopyWith<$R, ClientGetsAllItemsEvent, $Out>
      get $asClientGetsAllItemsEvent => $base.as((v, t, t2) =>
          _ClientGetsAllItemsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllItemsEventCopyWith<
    $R,
    $In extends ClientGetsAllItemsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? requestId});
  ClientGetsAllItemsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllItemsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllItemsEvent, $Out>
    implements
        ClientGetsAllItemsEventCopyWith<$R, ClientGetsAllItemsEvent, $Out> {
  _ClientGetsAllItemsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllItemsEvent> $mapper =
      ClientGetsAllItemsEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllItemsEvent $make(CopyWithData data) => ClientGetsAllItemsEvent(
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllItemsEventCopyWith<$R2, ClientGetsAllItemsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientGetsAllItemsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientCreatesNewItemEventMapper
    extends SubClassMapperBase<ClientCreatesNewItemEvent> {
  ClientCreatesNewItemEventMapper._();

  static ClientCreatesNewItemEventMapper? _instance;
  static ClientCreatesNewItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientCreatesNewItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      InventoryItemDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientCreatesNewItemEvent';

  static InventoryItemDto _$newItemDto(ClientCreatesNewItemEvent v) =>
      v.newItemDto;
  static const Field<ClientCreatesNewItemEvent, InventoryItemDto>
      _f$newItemDto = Field('newItemDto', _$newItemDto);
  static String _$eventType(ClientCreatesNewItemEvent v) => v.eventType;
  static const Field<ClientCreatesNewItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientCreatesNewItemEvent v) => v.requestId;
  static const Field<ClientCreatesNewItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientCreatesNewItemEvent> fields = const {
    #newItemDto: _f$newItemDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientCreatesNewItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientCreatesNewItemEvent _instantiate(DecodingData data) {
    return ClientCreatesNewItemEvent(
        newItemDto: data.dec(_f$newItemDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientCreatesNewItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientCreatesNewItemEvent>(map);
  }

  static ClientCreatesNewItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientCreatesNewItemEvent>(json);
  }
}

mixin ClientCreatesNewItemEventMappable {
  String toJson() {
    return ClientCreatesNewItemEventMapper.ensureInitialized()
        .encodeJson<ClientCreatesNewItemEvent>(
            this as ClientCreatesNewItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientCreatesNewItemEventMapper.ensureInitialized()
        .encodeMap<ClientCreatesNewItemEvent>(
            this as ClientCreatesNewItemEvent);
  }

  ClientCreatesNewItemEventCopyWith<ClientCreatesNewItemEvent,
          ClientCreatesNewItemEvent, ClientCreatesNewItemEvent>
      get copyWith => _ClientCreatesNewItemEventCopyWithImpl<
              ClientCreatesNewItemEvent, ClientCreatesNewItemEvent>(
          this as ClientCreatesNewItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientCreatesNewItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientCreatesNewItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientCreatesNewItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientCreatesNewItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientCreatesNewItemEventMapper.ensureInitialized()
        .hashValue(this as ClientCreatesNewItemEvent);
  }
}

extension ClientCreatesNewItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientCreatesNewItemEvent, $Out> {
  ClientCreatesNewItemEventCopyWith<$R, ClientCreatesNewItemEvent, $Out>
      get $asClientCreatesNewItemEvent => $base.as((v, t, t2) =>
          _ClientCreatesNewItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientCreatesNewItemEventCopyWith<
    $R,
    $In extends ClientCreatesNewItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  InventoryItemDtoCopyWith<$R, InventoryItemDto, InventoryItemDto>
      get newItemDto;
  @override
  $R call({InventoryItemDto? newItemDto, String? eventType, String? requestId});
  ClientCreatesNewItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientCreatesNewItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientCreatesNewItemEvent, $Out>
    implements
        ClientCreatesNewItemEventCopyWith<$R, ClientCreatesNewItemEvent, $Out> {
  _ClientCreatesNewItemEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientCreatesNewItemEvent> $mapper =
      ClientCreatesNewItemEventMapper.ensureInitialized();
  @override
  InventoryItemDtoCopyWith<$R, InventoryItemDto, InventoryItemDto>
      get newItemDto =>
          $value.newItemDto.copyWith.$chain((v) => call(newItemDto: v));
  @override
  $R call(
          {InventoryItemDto? newItemDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (newItemDto != null) #newItemDto: newItemDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientCreatesNewItemEvent $make(CopyWithData data) =>
      ClientCreatesNewItemEvent(
          newItemDto: data.get(#newItemDto, or: $value.newItemDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientCreatesNewItemEventCopyWith<$R2, ClientCreatesNewItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientCreatesNewItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientUpdatesItemEventMapper
    extends SubClassMapperBase<ClientUpdatesItemEvent> {
  ClientUpdatesItemEventMapper._();

  static ClientUpdatesItemEventMapper? _instance;
  static ClientUpdatesItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientUpdatesItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      UpdateItemDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientUpdatesItemEvent';

  static UpdateItemDto _$updateItemDto(ClientUpdatesItemEvent v) =>
      v.updateItemDto;
  static const Field<ClientUpdatesItemEvent, UpdateItemDto> _f$updateItemDto =
      Field('updateItemDto', _$updateItemDto);
  static String _$eventType(ClientUpdatesItemEvent v) => v.eventType;
  static const Field<ClientUpdatesItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientUpdatesItemEvent v) => v.requestId;
  static const Field<ClientUpdatesItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientUpdatesItemEvent> fields = const {
    #updateItemDto: _f$updateItemDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientUpdatesItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientUpdatesItemEvent _instantiate(DecodingData data) {
    return ClientUpdatesItemEvent(
        updateItemDto: data.dec(_f$updateItemDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientUpdatesItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientUpdatesItemEvent>(map);
  }

  static ClientUpdatesItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientUpdatesItemEvent>(json);
  }
}

mixin ClientUpdatesItemEventMappable {
  String toJson() {
    return ClientUpdatesItemEventMapper.ensureInitialized()
        .encodeJson<ClientUpdatesItemEvent>(this as ClientUpdatesItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientUpdatesItemEventMapper.ensureInitialized()
        .encodeMap<ClientUpdatesItemEvent>(this as ClientUpdatesItemEvent);
  }

  ClientUpdatesItemEventCopyWith<ClientUpdatesItemEvent, ClientUpdatesItemEvent,
          ClientUpdatesItemEvent>
      get copyWith => _ClientUpdatesItemEventCopyWithImpl<
              ClientUpdatesItemEvent, ClientUpdatesItemEvent>(
          this as ClientUpdatesItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientUpdatesItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientUpdatesItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientUpdatesItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientUpdatesItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientUpdatesItemEventMapper.ensureInitialized()
        .hashValue(this as ClientUpdatesItemEvent);
  }
}

extension ClientUpdatesItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientUpdatesItemEvent, $Out> {
  ClientUpdatesItemEventCopyWith<$R, ClientUpdatesItemEvent, $Out>
      get $asClientUpdatesItemEvent => $base.as((v, t, t2) =>
          _ClientUpdatesItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientUpdatesItemEventCopyWith<
    $R,
    $In extends ClientUpdatesItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  UpdateItemDtoCopyWith<$R, UpdateItemDto, UpdateItemDto> get updateItemDto;
  @override
  $R call({UpdateItemDto? updateItemDto, String? eventType, String? requestId});
  ClientUpdatesItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientUpdatesItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientUpdatesItemEvent, $Out>
    implements
        ClientUpdatesItemEventCopyWith<$R, ClientUpdatesItemEvent, $Out> {
  _ClientUpdatesItemEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientUpdatesItemEvent> $mapper =
      ClientUpdatesItemEventMapper.ensureInitialized();
  @override
  UpdateItemDtoCopyWith<$R, UpdateItemDto, UpdateItemDto> get updateItemDto =>
      $value.updateItemDto.copyWith.$chain((v) => call(updateItemDto: v));
  @override
  $R call(
          {UpdateItemDto? updateItemDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (updateItemDto != null) #updateItemDto: updateItemDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientUpdatesItemEvent $make(CopyWithData data) => ClientUpdatesItemEvent(
      updateItemDto: data.get(#updateItemDto, or: $value.updateItemDto),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientUpdatesItemEventCopyWith<$R2, ClientUpdatesItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientUpdatesItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientDeletesItemEventMapper
    extends SubClassMapperBase<ClientDeletesItemEvent> {
  ClientDeletesItemEventMapper._();

  static ClientDeletesItemEventMapper? _instance;
  static ClientDeletesItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientDeletesItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientDeletesItemEvent';

  static String _$id(ClientDeletesItemEvent v) => v.id;
  static const Field<ClientDeletesItemEvent, String> _f$id = Field('id', _$id);
  static String _$eventType(ClientDeletesItemEvent v) => v.eventType;
  static const Field<ClientDeletesItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientDeletesItemEvent v) => v.requestId;
  static const Field<ClientDeletesItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientDeletesItemEvent> fields = const {
    #id: _f$id,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientDeletesItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientDeletesItemEvent _instantiate(DecodingData data) {
    return ClientDeletesItemEvent(
        id: data.dec(_f$id),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientDeletesItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientDeletesItemEvent>(map);
  }

  static ClientDeletesItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientDeletesItemEvent>(json);
  }
}

mixin ClientDeletesItemEventMappable {
  String toJson() {
    return ClientDeletesItemEventMapper.ensureInitialized()
        .encodeJson<ClientDeletesItemEvent>(this as ClientDeletesItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientDeletesItemEventMapper.ensureInitialized()
        .encodeMap<ClientDeletesItemEvent>(this as ClientDeletesItemEvent);
  }

  ClientDeletesItemEventCopyWith<ClientDeletesItemEvent, ClientDeletesItemEvent,
          ClientDeletesItemEvent>
      get copyWith => _ClientDeletesItemEventCopyWithImpl<
              ClientDeletesItemEvent, ClientDeletesItemEvent>(
          this as ClientDeletesItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientDeletesItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientDeletesItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientDeletesItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientDeletesItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientDeletesItemEventMapper.ensureInitialized()
        .hashValue(this as ClientDeletesItemEvent);
  }
}

extension ClientDeletesItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientDeletesItemEvent, $Out> {
  ClientDeletesItemEventCopyWith<$R, ClientDeletesItemEvent, $Out>
      get $asClientDeletesItemEvent => $base.as((v, t, t2) =>
          _ClientDeletesItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientDeletesItemEventCopyWith<
    $R,
    $In extends ClientDeletesItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, String? eventType, String? requestId});
  ClientDeletesItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientDeletesItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientDeletesItemEvent, $Out>
    implements
        ClientDeletesItemEventCopyWith<$R, ClientDeletesItemEvent, $Out> {
  _ClientDeletesItemEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientDeletesItemEvent> $mapper =
      ClientDeletesItemEventMapper.ensureInitialized();
  @override
  $R call({String? id, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientDeletesItemEvent $make(CopyWithData data) => ClientDeletesItemEvent(
      id: data.get(#id, or: $value.id),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientDeletesItemEventCopyWith<$R2, ClientDeletesItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientDeletesItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientGetsAllTagsFromItemEventMapper
    extends SubClassMapperBase<ClientGetsAllTagsFromItemEvent> {
  ClientGetsAllTagsFromItemEventMapper._();

  static ClientGetsAllTagsFromItemEventMapper? _instance;
  static ClientGetsAllTagsFromItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllTagsFromItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllTagsFromItemEvent';

  static String _$id(ClientGetsAllTagsFromItemEvent v) => v.id;
  static const Field<ClientGetsAllTagsFromItemEvent, String> _f$id =
      Field('id', _$id);
  static String _$eventType(ClientGetsAllTagsFromItemEvent v) => v.eventType;
  static const Field<ClientGetsAllTagsFromItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllTagsFromItemEvent v) => v.requestId;
  static const Field<ClientGetsAllTagsFromItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllTagsFromItemEvent> fields = const {
    #id: _f$id,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllTagsFromItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllTagsFromItemEvent _instantiate(DecodingData data) {
    return ClientGetsAllTagsFromItemEvent(
        id: data.dec(_f$id),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllTagsFromItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllTagsFromItemEvent>(map);
  }

  static ClientGetsAllTagsFromItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientGetsAllTagsFromItemEvent>(json);
  }
}

mixin ClientGetsAllTagsFromItemEventMappable {
  String toJson() {
    return ClientGetsAllTagsFromItemEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllTagsFromItemEvent>(
            this as ClientGetsAllTagsFromItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllTagsFromItemEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllTagsFromItemEvent>(
            this as ClientGetsAllTagsFromItemEvent);
  }

  ClientGetsAllTagsFromItemEventCopyWith<ClientGetsAllTagsFromItemEvent,
          ClientGetsAllTagsFromItemEvent, ClientGetsAllTagsFromItemEvent>
      get copyWith => _ClientGetsAllTagsFromItemEventCopyWithImpl<
              ClientGetsAllTagsFromItemEvent, ClientGetsAllTagsFromItemEvent>(
          this as ClientGetsAllTagsFromItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllTagsFromItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllTagsFromItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllTagsFromItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllTagsFromItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllTagsFromItemEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllTagsFromItemEvent);
  }
}

extension ClientGetsAllTagsFromItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllTagsFromItemEvent, $Out> {
  ClientGetsAllTagsFromItemEventCopyWith<$R, ClientGetsAllTagsFromItemEvent,
          $Out>
      get $asClientGetsAllTagsFromItemEvent => $base.as((v, t, t2) =>
          _ClientGetsAllTagsFromItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllTagsFromItemEventCopyWith<
    $R,
    $In extends ClientGetsAllTagsFromItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, String? eventType, String? requestId});
  ClientGetsAllTagsFromItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllTagsFromItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllTagsFromItemEvent, $Out>
    implements
        ClientGetsAllTagsFromItemEventCopyWith<$R,
            ClientGetsAllTagsFromItemEvent, $Out> {
  _ClientGetsAllTagsFromItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllTagsFromItemEvent> $mapper =
      ClientGetsAllTagsFromItemEventMapper.ensureInitialized();
  @override
  $R call({String? id, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllTagsFromItemEvent $make(CopyWithData data) =>
      ClientGetsAllTagsFromItemEvent(
          id: data.get(#id, or: $value.id),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllTagsFromItemEventCopyWith<$R2, ClientGetsAllTagsFromItemEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientGetsAllTagsFromItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsCreatedItemEventMapper
    extends SubClassMapperBase<ServerSendsCreatedItemEvent> {
  ServerSendsCreatedItemEventMapper._();

  static ServerSendsCreatedItemEventMapper? _instance;
  static ServerSendsCreatedItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsCreatedItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      InventoryItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsCreatedItemEvent';

  static InventoryItemModel _$createdItem(ServerSendsCreatedItemEvent v) =>
      v.createdItem;
  static const Field<ServerSendsCreatedItemEvent, InventoryItemModel>
      _f$createdItem = Field('createdItem', _$createdItem);
  static String _$eventType(ServerSendsCreatedItemEvent v) => v.eventType;
  static const Field<ServerSendsCreatedItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsCreatedItemEvent v) => v.requestId;
  static const Field<ServerSendsCreatedItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsCreatedItemEvent> fields = const {
    #createdItem: _f$createdItem,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientUpdatesItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsCreatedItemEvent _instantiate(DecodingData data) {
    return ServerSendsCreatedItemEvent(
        createdItem: data.dec(_f$createdItem),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsCreatedItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsCreatedItemEvent>(map);
  }

  static ServerSendsCreatedItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsCreatedItemEvent>(json);
  }
}

mixin ServerSendsCreatedItemEventMappable {
  String toJson() {
    return ServerSendsCreatedItemEventMapper.ensureInitialized()
        .encodeJson<ServerSendsCreatedItemEvent>(
            this as ServerSendsCreatedItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsCreatedItemEventMapper.ensureInitialized()
        .encodeMap<ServerSendsCreatedItemEvent>(
            this as ServerSendsCreatedItemEvent);
  }

  ServerSendsCreatedItemEventCopyWith<ServerSendsCreatedItemEvent,
          ServerSendsCreatedItemEvent, ServerSendsCreatedItemEvent>
      get copyWith => _ServerSendsCreatedItemEventCopyWithImpl<
              ServerSendsCreatedItemEvent, ServerSendsCreatedItemEvent>(
          this as ServerSendsCreatedItemEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsCreatedItemEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsCreatedItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsCreatedItemEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsCreatedItemEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsCreatedItemEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsCreatedItemEvent);
  }
}

extension ServerSendsCreatedItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsCreatedItemEvent, $Out> {
  ServerSendsCreatedItemEventCopyWith<$R, ServerSendsCreatedItemEvent, $Out>
      get $asServerSendsCreatedItemEvent => $base.as((v, t, t2) =>
          _ServerSendsCreatedItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsCreatedItemEventCopyWith<
    $R,
    $In extends ServerSendsCreatedItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  InventoryItemModelCopyWith<$R, InventoryItemModel, InventoryItemModel>
      get createdItem;
  @override
  $R call(
      {InventoryItemModel? createdItem, String? eventType, String? requestId});
  ServerSendsCreatedItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsCreatedItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsCreatedItemEvent, $Out>
    implements
        ServerSendsCreatedItemEventCopyWith<$R, ServerSendsCreatedItemEvent,
            $Out> {
  _ServerSendsCreatedItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsCreatedItemEvent> $mapper =
      ServerSendsCreatedItemEventMapper.ensureInitialized();
  @override
  InventoryItemModelCopyWith<$R, InventoryItemModel, InventoryItemModel>
      get createdItem =>
          $value.createdItem.copyWith.$chain((v) => call(createdItem: v));
  @override
  $R call(
          {InventoryItemModel? createdItem,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (createdItem != null) #createdItem: createdItem,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsCreatedItemEvent $make(CopyWithData data) =>
      ServerSendsCreatedItemEvent(
          createdItem: data.get(#createdItem, or: $value.createdItem),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsCreatedItemEventCopyWith<$R2, ServerSendsCreatedItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsCreatedItemEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ServerSendsUpdatedItemEventMapper
    extends SubClassMapperBase<ServerSendsUpdatedItemEvent> {
  ServerSendsUpdatedItemEventMapper._();

  static ServerSendsUpdatedItemEventMapper? _instance;
  static ServerSendsUpdatedItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsUpdatedItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      InventoryItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsUpdatedItemEvent';

  static InventoryItemModel _$updatedItem(ServerSendsUpdatedItemEvent v) =>
      v.updatedItem;
  static const Field<ServerSendsUpdatedItemEvent, InventoryItemModel>
      _f$updatedItem = Field('updatedItem', _$updatedItem);
  static String _$eventType(ServerSendsUpdatedItemEvent v) => v.eventType;
  static const Field<ServerSendsUpdatedItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsUpdatedItemEvent v) => v.requestId;
  static const Field<ServerSendsUpdatedItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsUpdatedItemEvent> fields = const {
    #updatedItem: _f$updatedItem,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientUpdatesItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsUpdatedItemEvent _instantiate(DecodingData data) {
    return ServerSendsUpdatedItemEvent(
        updatedItem: data.dec(_f$updatedItem),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsUpdatedItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsUpdatedItemEvent>(map);
  }

  static ServerSendsUpdatedItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsUpdatedItemEvent>(json);
  }
}

mixin ServerSendsUpdatedItemEventMappable {
  String toJson() {
    return ServerSendsUpdatedItemEventMapper.ensureInitialized()
        .encodeJson<ServerSendsUpdatedItemEvent>(
            this as ServerSendsUpdatedItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsUpdatedItemEventMapper.ensureInitialized()
        .encodeMap<ServerSendsUpdatedItemEvent>(
            this as ServerSendsUpdatedItemEvent);
  }

  ServerSendsUpdatedItemEventCopyWith<ServerSendsUpdatedItemEvent,
          ServerSendsUpdatedItemEvent, ServerSendsUpdatedItemEvent>
      get copyWith => _ServerSendsUpdatedItemEventCopyWithImpl<
              ServerSendsUpdatedItemEvent, ServerSendsUpdatedItemEvent>(
          this as ServerSendsUpdatedItemEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsUpdatedItemEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsUpdatedItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsUpdatedItemEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsUpdatedItemEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsUpdatedItemEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsUpdatedItemEvent);
  }
}

extension ServerSendsUpdatedItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsUpdatedItemEvent, $Out> {
  ServerSendsUpdatedItemEventCopyWith<$R, ServerSendsUpdatedItemEvent, $Out>
      get $asServerSendsUpdatedItemEvent => $base.as((v, t, t2) =>
          _ServerSendsUpdatedItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsUpdatedItemEventCopyWith<
    $R,
    $In extends ServerSendsUpdatedItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  InventoryItemModelCopyWith<$R, InventoryItemModel, InventoryItemModel>
      get updatedItem;
  @override
  $R call(
      {InventoryItemModel? updatedItem, String? eventType, String? requestId});
  ServerSendsUpdatedItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsUpdatedItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsUpdatedItemEvent, $Out>
    implements
        ServerSendsUpdatedItemEventCopyWith<$R, ServerSendsUpdatedItemEvent,
            $Out> {
  _ServerSendsUpdatedItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsUpdatedItemEvent> $mapper =
      ServerSendsUpdatedItemEventMapper.ensureInitialized();
  @override
  InventoryItemModelCopyWith<$R, InventoryItemModel, InventoryItemModel>
      get updatedItem =>
          $value.updatedItem.copyWith.$chain((v) => call(updatedItem: v));
  @override
  $R call(
          {InventoryItemModel? updatedItem,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (updatedItem != null) #updatedItem: updatedItem,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsUpdatedItemEvent $make(CopyWithData data) =>
      ServerSendsUpdatedItemEvent(
          updatedItem: data.get(#updatedItem, or: $value.updatedItem),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsUpdatedItemEventCopyWith<$R2, ServerSendsUpdatedItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsUpdatedItemEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ClientGetsAllProjectsEventMapper
    extends SubClassMapperBase<ClientGetsAllProjectsEvent> {
  ClientGetsAllProjectsEventMapper._();

  static ClientGetsAllProjectsEventMapper? _instance;
  static ClientGetsAllProjectsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllProjectsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllProjectsEvent';

  static String _$eventType(ClientGetsAllProjectsEvent v) => v.eventType;
  static const Field<ClientGetsAllProjectsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllProjectsEvent v) => v.requestId;
  static const Field<ClientGetsAllProjectsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllProjectsEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllProjectsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllProjectsEvent _instantiate(DecodingData data) {
    return ClientGetsAllProjectsEvent(
        eventType: data.dec(_f$eventType), requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllProjectsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllProjectsEvent>(map);
  }

  static ClientGetsAllProjectsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientGetsAllProjectsEvent>(json);
  }
}

mixin ClientGetsAllProjectsEventMappable {
  String toJson() {
    return ClientGetsAllProjectsEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllProjectsEvent>(
            this as ClientGetsAllProjectsEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllProjectsEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllProjectsEvent>(
            this as ClientGetsAllProjectsEvent);
  }

  ClientGetsAllProjectsEventCopyWith<ClientGetsAllProjectsEvent,
          ClientGetsAllProjectsEvent, ClientGetsAllProjectsEvent>
      get copyWith => _ClientGetsAllProjectsEventCopyWithImpl<
              ClientGetsAllProjectsEvent, ClientGetsAllProjectsEvent>(
          this as ClientGetsAllProjectsEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllProjectsEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllProjectsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllProjectsEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllProjectsEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllProjectsEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllProjectsEvent);
  }
}

extension ClientGetsAllProjectsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllProjectsEvent, $Out> {
  ClientGetsAllProjectsEventCopyWith<$R, ClientGetsAllProjectsEvent, $Out>
      get $asClientGetsAllProjectsEvent => $base.as((v, t, t2) =>
          _ClientGetsAllProjectsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllProjectsEventCopyWith<
    $R,
    $In extends ClientGetsAllProjectsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? requestId});
  ClientGetsAllProjectsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllProjectsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllProjectsEvent, $Out>
    implements
        ClientGetsAllProjectsEventCopyWith<$R, ClientGetsAllProjectsEvent,
            $Out> {
  _ClientGetsAllProjectsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllProjectsEvent> $mapper =
      ClientGetsAllProjectsEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllProjectsEvent $make(CopyWithData data) =>
      ClientGetsAllProjectsEvent(
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllProjectsEventCopyWith<$R2, ClientGetsAllProjectsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientGetsAllProjectsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientCreatesNewProjectEventMapper
    extends SubClassMapperBase<ClientCreatesNewProjectEvent> {
  ClientCreatesNewProjectEventMapper._();

  static ClientCreatesNewProjectEventMapper? _instance;
  static ClientCreatesNewProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientCreatesNewProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      CreateNewProjectDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientCreatesNewProjectEvent';

  static CreateNewProjectDto _$createNewProjectDto(
          ClientCreatesNewProjectEvent v) =>
      v.createNewProjectDto;
  static const Field<ClientCreatesNewProjectEvent, CreateNewProjectDto>
      _f$createNewProjectDto =
      Field('createNewProjectDto', _$createNewProjectDto);
  static String _$eventType(ClientCreatesNewProjectEvent v) => v.eventType;
  static const Field<ClientCreatesNewProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientCreatesNewProjectEvent v) => v.requestId;
  static const Field<ClientCreatesNewProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientCreatesNewProjectEvent> fields = const {
    #createNewProjectDto: _f$createNewProjectDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientCreatesNewProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientCreatesNewProjectEvent _instantiate(DecodingData data) {
    return ClientCreatesNewProjectEvent(
        createNewProjectDto: data.dec(_f$createNewProjectDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientCreatesNewProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientCreatesNewProjectEvent>(map);
  }

  static ClientCreatesNewProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientCreatesNewProjectEvent>(json);
  }
}

mixin ClientCreatesNewProjectEventMappable {
  String toJson() {
    return ClientCreatesNewProjectEventMapper.ensureInitialized()
        .encodeJson<ClientCreatesNewProjectEvent>(
            this as ClientCreatesNewProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientCreatesNewProjectEventMapper.ensureInitialized()
        .encodeMap<ClientCreatesNewProjectEvent>(
            this as ClientCreatesNewProjectEvent);
  }

  ClientCreatesNewProjectEventCopyWith<ClientCreatesNewProjectEvent,
          ClientCreatesNewProjectEvent, ClientCreatesNewProjectEvent>
      get copyWith => _ClientCreatesNewProjectEventCopyWithImpl<
              ClientCreatesNewProjectEvent, ClientCreatesNewProjectEvent>(
          this as ClientCreatesNewProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ClientCreatesNewProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ClientCreatesNewProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientCreatesNewProjectEventMapper.ensureInitialized()
        .equalsValue(this as ClientCreatesNewProjectEvent, other);
  }

  @override
  int get hashCode {
    return ClientCreatesNewProjectEventMapper.ensureInitialized()
        .hashValue(this as ClientCreatesNewProjectEvent);
  }
}

extension ClientCreatesNewProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientCreatesNewProjectEvent, $Out> {
  ClientCreatesNewProjectEventCopyWith<$R, ClientCreatesNewProjectEvent, $Out>
      get $asClientCreatesNewProjectEvent => $base.as((v, t, t2) =>
          _ClientCreatesNewProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientCreatesNewProjectEventCopyWith<
    $R,
    $In extends ClientCreatesNewProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  CreateNewProjectDtoCopyWith<$R, CreateNewProjectDto, CreateNewProjectDto>
      get createNewProjectDto;
  @override
  $R call(
      {CreateNewProjectDto? createNewProjectDto,
      String? eventType,
      String? requestId});
  ClientCreatesNewProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientCreatesNewProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientCreatesNewProjectEvent, $Out>
    implements
        ClientCreatesNewProjectEventCopyWith<$R, ClientCreatesNewProjectEvent,
            $Out> {
  _ClientCreatesNewProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientCreatesNewProjectEvent> $mapper =
      ClientCreatesNewProjectEventMapper.ensureInitialized();
  @override
  CreateNewProjectDtoCopyWith<$R, CreateNewProjectDto, CreateNewProjectDto>
      get createNewProjectDto => $value.createNewProjectDto.copyWith
          .$chain((v) => call(createNewProjectDto: v));
  @override
  $R call(
          {CreateNewProjectDto? createNewProjectDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (createNewProjectDto != null)
          #createNewProjectDto: createNewProjectDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientCreatesNewProjectEvent $make(CopyWithData data) =>
      ClientCreatesNewProjectEvent(
          createNewProjectDto:
              data.get(#createNewProjectDto, or: $value.createNewProjectDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientCreatesNewProjectEventCopyWith<$R2, ClientCreatesNewProjectEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientCreatesNewProjectEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ClientDeletesProjectEventMapper
    extends SubClassMapperBase<ClientDeletesProjectEvent> {
  ClientDeletesProjectEventMapper._();

  static ClientDeletesProjectEventMapper? _instance;
  static ClientDeletesProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientDeletesProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientDeletesProjectEvent';

  static String _$projectId(ClientDeletesProjectEvent v) => v.projectId;
  static const Field<ClientDeletesProjectEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static String _$eventType(ClientDeletesProjectEvent v) => v.eventType;
  static const Field<ClientDeletesProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientDeletesProjectEvent v) => v.requestId;
  static const Field<ClientDeletesProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientDeletesProjectEvent> fields = const {
    #projectId: _f$projectId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientDeletesProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientDeletesProjectEvent _instantiate(DecodingData data) {
    return ClientDeletesProjectEvent(
        projectId: data.dec(_f$projectId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientDeletesProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientDeletesProjectEvent>(map);
  }

  static ClientDeletesProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientDeletesProjectEvent>(json);
  }
}

mixin ClientDeletesProjectEventMappable {
  String toJson() {
    return ClientDeletesProjectEventMapper.ensureInitialized()
        .encodeJson<ClientDeletesProjectEvent>(
            this as ClientDeletesProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientDeletesProjectEventMapper.ensureInitialized()
        .encodeMap<ClientDeletesProjectEvent>(
            this as ClientDeletesProjectEvent);
  }

  ClientDeletesProjectEventCopyWith<ClientDeletesProjectEvent,
          ClientDeletesProjectEvent, ClientDeletesProjectEvent>
      get copyWith => _ClientDeletesProjectEventCopyWithImpl<
              ClientDeletesProjectEvent, ClientDeletesProjectEvent>(
          this as ClientDeletesProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ClientDeletesProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ClientDeletesProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientDeletesProjectEventMapper.ensureInitialized()
        .equalsValue(this as ClientDeletesProjectEvent, other);
  }

  @override
  int get hashCode {
    return ClientDeletesProjectEventMapper.ensureInitialized()
        .hashValue(this as ClientDeletesProjectEvent);
  }
}

extension ClientDeletesProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientDeletesProjectEvent, $Out> {
  ClientDeletesProjectEventCopyWith<$R, ClientDeletesProjectEvent, $Out>
      get $asClientDeletesProjectEvent => $base.as((v, t, t2) =>
          _ClientDeletesProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientDeletesProjectEventCopyWith<
    $R,
    $In extends ClientDeletesProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? projectId, String? eventType, String? requestId});
  ClientDeletesProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientDeletesProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientDeletesProjectEvent, $Out>
    implements
        ClientDeletesProjectEventCopyWith<$R, ClientDeletesProjectEvent, $Out> {
  _ClientDeletesProjectEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientDeletesProjectEvent> $mapper =
      ClientDeletesProjectEventMapper.ensureInitialized();
  @override
  $R call({String? projectId, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientDeletesProjectEvent $make(CopyWithData data) =>
      ClientDeletesProjectEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientDeletesProjectEventCopyWith<$R2, ClientDeletesProjectEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientDeletesProjectEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientUpdatesProjectEventMapper
    extends SubClassMapperBase<ClientUpdatesProjectEvent> {
  ClientUpdatesProjectEventMapper._();

  static ClientUpdatesProjectEventMapper? _instance;
  static ClientUpdatesProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientUpdatesProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      UpdateProjectDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientUpdatesProjectEvent';

  static UpdateProjectDto _$updateProjectDto(ClientUpdatesProjectEvent v) =>
      v.updateProjectDto;
  static const Field<ClientUpdatesProjectEvent, UpdateProjectDto>
      _f$updateProjectDto = Field('updateProjectDto', _$updateProjectDto);
  static String _$eventType(ClientUpdatesProjectEvent v) => v.eventType;
  static const Field<ClientUpdatesProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientUpdatesProjectEvent v) => v.requestId;
  static const Field<ClientUpdatesProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientUpdatesProjectEvent> fields = const {
    #updateProjectDto: _f$updateProjectDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientUpdatesProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientUpdatesProjectEvent _instantiate(DecodingData data) {
    return ClientUpdatesProjectEvent(
        updateProjectDto: data.dec(_f$updateProjectDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientUpdatesProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientUpdatesProjectEvent>(map);
  }

  static ClientUpdatesProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientUpdatesProjectEvent>(json);
  }
}

mixin ClientUpdatesProjectEventMappable {
  String toJson() {
    return ClientUpdatesProjectEventMapper.ensureInitialized()
        .encodeJson<ClientUpdatesProjectEvent>(
            this as ClientUpdatesProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientUpdatesProjectEventMapper.ensureInitialized()
        .encodeMap<ClientUpdatesProjectEvent>(
            this as ClientUpdatesProjectEvent);
  }

  ClientUpdatesProjectEventCopyWith<ClientUpdatesProjectEvent,
          ClientUpdatesProjectEvent, ClientUpdatesProjectEvent>
      get copyWith => _ClientUpdatesProjectEventCopyWithImpl<
              ClientUpdatesProjectEvent, ClientUpdatesProjectEvent>(
          this as ClientUpdatesProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ClientUpdatesProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ClientUpdatesProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientUpdatesProjectEventMapper.ensureInitialized()
        .equalsValue(this as ClientUpdatesProjectEvent, other);
  }

  @override
  int get hashCode {
    return ClientUpdatesProjectEventMapper.ensureInitialized()
        .hashValue(this as ClientUpdatesProjectEvent);
  }
}

extension ClientUpdatesProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientUpdatesProjectEvent, $Out> {
  ClientUpdatesProjectEventCopyWith<$R, ClientUpdatesProjectEvent, $Out>
      get $asClientUpdatesProjectEvent => $base.as((v, t, t2) =>
          _ClientUpdatesProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientUpdatesProjectEventCopyWith<
    $R,
    $In extends ClientUpdatesProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  UpdateProjectDtoCopyWith<$R, UpdateProjectDto, UpdateProjectDto>
      get updateProjectDto;
  @override
  $R call(
      {UpdateProjectDto? updateProjectDto,
      String? eventType,
      String? requestId});
  ClientUpdatesProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientUpdatesProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientUpdatesProjectEvent, $Out>
    implements
        ClientUpdatesProjectEventCopyWith<$R, ClientUpdatesProjectEvent, $Out> {
  _ClientUpdatesProjectEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientUpdatesProjectEvent> $mapper =
      ClientUpdatesProjectEventMapper.ensureInitialized();
  @override
  UpdateProjectDtoCopyWith<$R, UpdateProjectDto, UpdateProjectDto>
      get updateProjectDto => $value.updateProjectDto.copyWith
          .$chain((v) => call(updateProjectDto: v));
  @override
  $R call(
          {UpdateProjectDto? updateProjectDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (updateProjectDto != null) #updateProjectDto: updateProjectDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientUpdatesProjectEvent $make(CopyWithData data) =>
      ClientUpdatesProjectEvent(
          updateProjectDto:
              data.get(#updateProjectDto, or: $value.updateProjectDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientUpdatesProjectEventCopyWith<$R2, ClientUpdatesProjectEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientUpdatesProjectEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsAllProjectsEventMapper
    extends SubClassMapperBase<ServerSendsAllProjectsEvent> {
  ServerSendsAllProjectsEventMapper._();

  static ServerSendsAllProjectsEventMapper? _instance;
  static ServerSendsAllProjectsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllProjectsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ProjectItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllProjectsEvent';

  static List<ProjectItemModel> _$projects(ServerSendsAllProjectsEvent v) =>
      v.projects;
  static const Field<ServerSendsAllProjectsEvent, List<ProjectItemModel>>
      _f$projects = Field('projects', _$projects);
  static String _$eventType(ServerSendsAllProjectsEvent v) => v.eventType;
  static const Field<ServerSendsAllProjectsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllProjectsEvent v) => v.requestId;
  static const Field<ServerSendsAllProjectsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllProjectsEvent> fields = const {
    #projects: _f$projects,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllProjectsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllProjectsEvent _instantiate(DecodingData data) {
    return ServerSendsAllProjectsEvent(
        projects: data.dec(_f$projects),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllProjectsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllProjectsEvent>(map);
  }

  static ServerSendsAllProjectsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsAllProjectsEvent>(json);
  }
}

mixin ServerSendsAllProjectsEventMappable {
  String toJson() {
    return ServerSendsAllProjectsEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllProjectsEvent>(
            this as ServerSendsAllProjectsEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllProjectsEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllProjectsEvent>(
            this as ServerSendsAllProjectsEvent);
  }

  ServerSendsAllProjectsEventCopyWith<ServerSendsAllProjectsEvent,
          ServerSendsAllProjectsEvent, ServerSendsAllProjectsEvent>
      get copyWith => _ServerSendsAllProjectsEventCopyWithImpl<
              ServerSendsAllProjectsEvent, ServerSendsAllProjectsEvent>(
          this as ServerSendsAllProjectsEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllProjectsEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllProjectsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllProjectsEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllProjectsEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllProjectsEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllProjectsEvent);
  }
}

extension ServerSendsAllProjectsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllProjectsEvent, $Out> {
  ServerSendsAllProjectsEventCopyWith<$R, ServerSendsAllProjectsEvent, $Out>
      get $asServerSendsAllProjectsEvent => $base.as((v, t, t2) =>
          _ServerSendsAllProjectsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllProjectsEventCopyWith<
    $R,
    $In extends ServerSendsAllProjectsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ProjectItemModel,
          ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>>
      get projects;
  @override
  $R call(
      {List<ProjectItemModel>? projects, String? eventType, String? requestId});
  ServerSendsAllProjectsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllProjectsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllProjectsEvent, $Out>
    implements
        ServerSendsAllProjectsEventCopyWith<$R, ServerSendsAllProjectsEvent,
            $Out> {
  _ServerSendsAllProjectsEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllProjectsEvent> $mapper =
      ServerSendsAllProjectsEventMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ProjectItemModel,
          ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>>
      get projects => ListCopyWith($value.projects,
          (v, t) => v.copyWith.$chain(t), (v) => call(projects: v));
  @override
  $R call(
          {List<ProjectItemModel>? projects,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projects != null) #projects: projects,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllProjectsEvent $make(CopyWithData data) =>
      ServerSendsAllProjectsEvent(
          projects: data.get(#projects, or: $value.projects),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllProjectsEventCopyWith<$R2, ServerSendsAllProjectsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsAllProjectsEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ServerSendsAllItemsEventMapper
    extends SubClassMapperBase<ServerSendsAllItemsEvent> {
  ServerSendsAllItemsEventMapper._();

  static ServerSendsAllItemsEventMapper? _instance;
  static ServerSendsAllItemsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllItemsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      InventoryItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllItemsEvent';

  static List<InventoryItemModel> _$items(ServerSendsAllItemsEvent v) =>
      v.items;
  static const Field<ServerSendsAllItemsEvent, List<InventoryItemModel>>
      _f$items = Field('items', _$items);
  static String _$eventType(ServerSendsAllItemsEvent v) => v.eventType;
  static const Field<ServerSendsAllItemsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllItemsEvent v) => v.requestId;
  static const Field<ServerSendsAllItemsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllItemsEvent> fields = const {
    #items: _f$items,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllItemsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllItemsEvent _instantiate(DecodingData data) {
    return ServerSendsAllItemsEvent(
        items: data.dec(_f$items),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllItemsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllItemsEvent>(map);
  }

  static ServerSendsAllItemsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsAllItemsEvent>(json);
  }
}

mixin ServerSendsAllItemsEventMappable {
  String toJson() {
    return ServerSendsAllItemsEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllItemsEvent>(this as ServerSendsAllItemsEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllItemsEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllItemsEvent>(this as ServerSendsAllItemsEvent);
  }

  ServerSendsAllItemsEventCopyWith<ServerSendsAllItemsEvent,
          ServerSendsAllItemsEvent, ServerSendsAllItemsEvent>
      get copyWith => _ServerSendsAllItemsEventCopyWithImpl<
              ServerSendsAllItemsEvent, ServerSendsAllItemsEvent>(
          this as ServerSendsAllItemsEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllItemsEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllItemsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllItemsEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllItemsEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllItemsEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllItemsEvent);
  }
}

extension ServerSendsAllItemsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllItemsEvent, $Out> {
  ServerSendsAllItemsEventCopyWith<$R, ServerSendsAllItemsEvent, $Out>
      get $asServerSendsAllItemsEvent => $base.as((v, t, t2) =>
          _ServerSendsAllItemsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllItemsEventCopyWith<
    $R,
    $In extends ServerSendsAllItemsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      InventoryItemModel,
      InventoryItemModelCopyWith<$R, InventoryItemModel,
          InventoryItemModel>> get items;
  @override
  $R call(
      {List<InventoryItemModel>? items, String? eventType, String? requestId});
  ServerSendsAllItemsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllItemsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllItemsEvent, $Out>
    implements
        ServerSendsAllItemsEventCopyWith<$R, ServerSendsAllItemsEvent, $Out> {
  _ServerSendsAllItemsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllItemsEvent> $mapper =
      ServerSendsAllItemsEventMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      InventoryItemModel,
      InventoryItemModelCopyWith<$R, InventoryItemModel,
          InventoryItemModel>> get items => ListCopyWith(
      $value.items, (v, t) => v.copyWith.$chain(t), (v) => call(items: v));
  @override
  $R call(
          {List<InventoryItemModel>? items,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (items != null) #items: items,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllItemsEvent $make(CopyWithData data) => ServerSendsAllItemsEvent(
      items: data.get(#items, or: $value.items),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllItemsEventCopyWith<$R2, ServerSendsAllItemsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsAllItemsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsCreatedProjectEventMapper
    extends SubClassMapperBase<ServerSendsCreatedProjectEvent> {
  ServerSendsCreatedProjectEventMapper._();

  static ServerSendsCreatedProjectEventMapper? _instance;
  static ServerSendsCreatedProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsCreatedProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ProjectItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsCreatedProjectEvent';

  static ProjectItemModel _$projectDto(ServerSendsCreatedProjectEvent v) =>
      v.projectDto;
  static const Field<ServerSendsCreatedProjectEvent, ProjectItemModel>
      _f$projectDto = Field('projectDto', _$projectDto);
  static String _$eventType(ServerSendsCreatedProjectEvent v) => v.eventType;
  static const Field<ServerSendsCreatedProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsCreatedProjectEvent v) => v.requestId;
  static const Field<ServerSendsCreatedProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsCreatedProjectEvent> fields = const {
    #projectDto: _f$projectDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsCreatedProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsCreatedProjectEvent _instantiate(DecodingData data) {
    return ServerSendsCreatedProjectEvent(
        projectDto: data.dec(_f$projectDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsCreatedProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsCreatedProjectEvent>(map);
  }

  static ServerSendsCreatedProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsCreatedProjectEvent>(json);
  }
}

mixin ServerSendsCreatedProjectEventMappable {
  String toJson() {
    return ServerSendsCreatedProjectEventMapper.ensureInitialized()
        .encodeJson<ServerSendsCreatedProjectEvent>(
            this as ServerSendsCreatedProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsCreatedProjectEventMapper.ensureInitialized()
        .encodeMap<ServerSendsCreatedProjectEvent>(
            this as ServerSendsCreatedProjectEvent);
  }

  ServerSendsCreatedProjectEventCopyWith<ServerSendsCreatedProjectEvent,
          ServerSendsCreatedProjectEvent, ServerSendsCreatedProjectEvent>
      get copyWith => _ServerSendsCreatedProjectEventCopyWithImpl<
              ServerSendsCreatedProjectEvent, ServerSendsCreatedProjectEvent>(
          this as ServerSendsCreatedProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsCreatedProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsCreatedProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsCreatedProjectEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsCreatedProjectEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsCreatedProjectEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsCreatedProjectEvent);
  }
}

extension ServerSendsCreatedProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsCreatedProjectEvent, $Out> {
  ServerSendsCreatedProjectEventCopyWith<$R, ServerSendsCreatedProjectEvent,
          $Out>
      get $asServerSendsCreatedProjectEvent => $base.as((v, t, t2) =>
          _ServerSendsCreatedProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsCreatedProjectEventCopyWith<
    $R,
    $In extends ServerSendsCreatedProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>
      get projectDto;
  @override
  $R call({ProjectItemModel? projectDto, String? eventType, String? requestId});
  ServerSendsCreatedProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsCreatedProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsCreatedProjectEvent, $Out>
    implements
        ServerSendsCreatedProjectEventCopyWith<$R,
            ServerSendsCreatedProjectEvent, $Out> {
  _ServerSendsCreatedProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsCreatedProjectEvent> $mapper =
      ServerSendsCreatedProjectEventMapper.ensureInitialized();
  @override
  ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>
      get projectDto =>
          $value.projectDto.copyWith.$chain((v) => call(projectDto: v));
  @override
  $R call(
          {ProjectItemModel? projectDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectDto != null) #projectDto: projectDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsCreatedProjectEvent $make(CopyWithData data) =>
      ServerSendsCreatedProjectEvent(
          projectDto: data.get(#projectDto, or: $value.projectDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsCreatedProjectEventCopyWith<$R2, ServerSendsCreatedProjectEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsCreatedProjectEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerDeletedProjectEventMapper
    extends SubClassMapperBase<ServerDeletedProjectEvent> {
  ServerDeletedProjectEventMapper._();

  static ServerDeletedProjectEventMapper? _instance;
  static ServerDeletedProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerDeletedProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerDeletedProjectEvent';

  static String _$projectId(ServerDeletedProjectEvent v) => v.projectId;
  static const Field<ServerDeletedProjectEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static String _$eventType(ServerDeletedProjectEvent v) => v.eventType;
  static const Field<ServerDeletedProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerDeletedProjectEvent v) => v.requestId;
  static const Field<ServerDeletedProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerDeletedProjectEvent> fields = const {
    #projectId: _f$projectId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerDeletedProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerDeletedProjectEvent _instantiate(DecodingData data) {
    return ServerDeletedProjectEvent(
        projectId: data.dec(_f$projectId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerDeletedProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerDeletedProjectEvent>(map);
  }

  static ServerDeletedProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerDeletedProjectEvent>(json);
  }
}

mixin ServerDeletedProjectEventMappable {
  String toJson() {
    return ServerDeletedProjectEventMapper.ensureInitialized()
        .encodeJson<ServerDeletedProjectEvent>(
            this as ServerDeletedProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerDeletedProjectEventMapper.ensureInitialized()
        .encodeMap<ServerDeletedProjectEvent>(
            this as ServerDeletedProjectEvent);
  }

  ServerDeletedProjectEventCopyWith<ServerDeletedProjectEvent,
          ServerDeletedProjectEvent, ServerDeletedProjectEvent>
      get copyWith => _ServerDeletedProjectEventCopyWithImpl<
              ServerDeletedProjectEvent, ServerDeletedProjectEvent>(
          this as ServerDeletedProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ServerDeletedProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ServerDeletedProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerDeletedProjectEventMapper.ensureInitialized()
        .equalsValue(this as ServerDeletedProjectEvent, other);
  }

  @override
  int get hashCode {
    return ServerDeletedProjectEventMapper.ensureInitialized()
        .hashValue(this as ServerDeletedProjectEvent);
  }
}

extension ServerDeletedProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerDeletedProjectEvent, $Out> {
  ServerDeletedProjectEventCopyWith<$R, ServerDeletedProjectEvent, $Out>
      get $asServerDeletedProjectEvent => $base.as((v, t, t2) =>
          _ServerDeletedProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerDeletedProjectEventCopyWith<
    $R,
    $In extends ServerDeletedProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? projectId, String? eventType, String? requestId});
  ServerDeletedProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerDeletedProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerDeletedProjectEvent, $Out>
    implements
        ServerDeletedProjectEventCopyWith<$R, ServerDeletedProjectEvent, $Out> {
  _ServerDeletedProjectEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerDeletedProjectEvent> $mapper =
      ServerDeletedProjectEventMapper.ensureInitialized();
  @override
  $R call({String? projectId, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerDeletedProjectEvent $make(CopyWithData data) =>
      ServerDeletedProjectEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerDeletedProjectEventCopyWith<$R2, ServerDeletedProjectEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerDeletedProjectEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsUpdatedProjectEventMapper
    extends SubClassMapperBase<ServerSendsUpdatedProjectEvent> {
  ServerSendsUpdatedProjectEventMapper._();

  static ServerSendsUpdatedProjectEventMapper? _instance;
  static ServerSendsUpdatedProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsUpdatedProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ProjectItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsUpdatedProjectEvent';

  static ProjectItemModel _$projectDto(ServerSendsUpdatedProjectEvent v) =>
      v.projectDto;
  static const Field<ServerSendsUpdatedProjectEvent, ProjectItemModel>
      _f$projectDto = Field('projectDto', _$projectDto);
  static String _$eventType(ServerSendsUpdatedProjectEvent v) => v.eventType;
  static const Field<ServerSendsUpdatedProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsUpdatedProjectEvent v) => v.requestId;
  static const Field<ServerSendsUpdatedProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsUpdatedProjectEvent> fields = const {
    #projectDto: _f$projectDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsUpdatedProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsUpdatedProjectEvent _instantiate(DecodingData data) {
    return ServerSendsUpdatedProjectEvent(
        projectDto: data.dec(_f$projectDto),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsUpdatedProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsUpdatedProjectEvent>(map);
  }

  static ServerSendsUpdatedProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsUpdatedProjectEvent>(json);
  }
}

mixin ServerSendsUpdatedProjectEventMappable {
  String toJson() {
    return ServerSendsUpdatedProjectEventMapper.ensureInitialized()
        .encodeJson<ServerSendsUpdatedProjectEvent>(
            this as ServerSendsUpdatedProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsUpdatedProjectEventMapper.ensureInitialized()
        .encodeMap<ServerSendsUpdatedProjectEvent>(
            this as ServerSendsUpdatedProjectEvent);
  }

  ServerSendsUpdatedProjectEventCopyWith<ServerSendsUpdatedProjectEvent,
          ServerSendsUpdatedProjectEvent, ServerSendsUpdatedProjectEvent>
      get copyWith => _ServerSendsUpdatedProjectEventCopyWithImpl<
              ServerSendsUpdatedProjectEvent, ServerSendsUpdatedProjectEvent>(
          this as ServerSendsUpdatedProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsUpdatedProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsUpdatedProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsUpdatedProjectEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsUpdatedProjectEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsUpdatedProjectEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsUpdatedProjectEvent);
  }
}

extension ServerSendsUpdatedProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsUpdatedProjectEvent, $Out> {
  ServerSendsUpdatedProjectEventCopyWith<$R, ServerSendsUpdatedProjectEvent,
          $Out>
      get $asServerSendsUpdatedProjectEvent => $base.as((v, t, t2) =>
          _ServerSendsUpdatedProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsUpdatedProjectEventCopyWith<
    $R,
    $In extends ServerSendsUpdatedProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>
      get projectDto;
  @override
  $R call({ProjectItemModel? projectDto, String? eventType, String? requestId});
  ServerSendsUpdatedProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsUpdatedProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsUpdatedProjectEvent, $Out>
    implements
        ServerSendsUpdatedProjectEventCopyWith<$R,
            ServerSendsUpdatedProjectEvent, $Out> {
  _ServerSendsUpdatedProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsUpdatedProjectEvent> $mapper =
      ServerSendsUpdatedProjectEventMapper.ensureInitialized();
  @override
  ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>
      get projectDto =>
          $value.projectDto.copyWith.$chain((v) => call(projectDto: v));
  @override
  $R call(
          {ProjectItemModel? projectDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectDto != null) #projectDto: projectDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsUpdatedProjectEvent $make(CopyWithData data) =>
      ServerSendsUpdatedProjectEvent(
          projectDto: data.get(#projectDto, or: $value.projectDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsUpdatedProjectEventCopyWith<$R2, ServerSendsUpdatedProjectEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsUpdatedProjectEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsErrorMessageEventMapper
    extends SubClassMapperBase<ServerSendsErrorMessageEvent> {
  ServerSendsErrorMessageEventMapper._();

  static ServerSendsErrorMessageEventMapper? _instance;
  static ServerSendsErrorMessageEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsErrorMessageEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsErrorMessageEvent';

  static String _$message(ServerSendsErrorMessageEvent v) => v.message;
  static const Field<ServerSendsErrorMessageEvent, String> _f$message =
      Field('message', _$message);
  static String _$eventType(ServerSendsErrorMessageEvent v) => v.eventType;
  static const Field<ServerSendsErrorMessageEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsErrorMessageEvent v) => v.requestId;
  static const Field<ServerSendsErrorMessageEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsErrorMessageEvent> fields = const {
    #message: _f$message,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsErrorMessageEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsErrorMessageEvent _instantiate(DecodingData data) {
    return ServerSendsErrorMessageEvent(
        message: data.dec(_f$message),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsErrorMessageEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsErrorMessageEvent>(map);
  }

  static ServerSendsErrorMessageEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsErrorMessageEvent>(json);
  }
}

mixin ServerSendsErrorMessageEventMappable {
  String toJson() {
    return ServerSendsErrorMessageEventMapper.ensureInitialized()
        .encodeJson<ServerSendsErrorMessageEvent>(
            this as ServerSendsErrorMessageEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsErrorMessageEventMapper.ensureInitialized()
        .encodeMap<ServerSendsErrorMessageEvent>(
            this as ServerSendsErrorMessageEvent);
  }

  ServerSendsErrorMessageEventCopyWith<ServerSendsErrorMessageEvent,
          ServerSendsErrorMessageEvent, ServerSendsErrorMessageEvent>
      get copyWith => _ServerSendsErrorMessageEventCopyWithImpl<
              ServerSendsErrorMessageEvent, ServerSendsErrorMessageEvent>(
          this as ServerSendsErrorMessageEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsErrorMessageEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsErrorMessageEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsErrorMessageEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsErrorMessageEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsErrorMessageEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsErrorMessageEvent);
  }
}

extension ServerSendsErrorMessageEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsErrorMessageEvent, $Out> {
  ServerSendsErrorMessageEventCopyWith<$R, ServerSendsErrorMessageEvent, $Out>
      get $asServerSendsErrorMessageEvent => $base.as((v, t, t2) =>
          _ServerSendsErrorMessageEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsErrorMessageEventCopyWith<
    $R,
    $In extends ServerSendsErrorMessageEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message, String? eventType, String? requestId});
  ServerSendsErrorMessageEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsErrorMessageEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsErrorMessageEvent, $Out>
    implements
        ServerSendsErrorMessageEventCopyWith<$R, ServerSendsErrorMessageEvent,
            $Out> {
  _ServerSendsErrorMessageEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsErrorMessageEvent> $mapper =
      ServerSendsErrorMessageEventMapper.ensureInitialized();
  @override
  $R call({String? message, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (message != null) #message: message,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsErrorMessageEvent $make(CopyWithData data) =>
      ServerSendsErrorMessageEvent(
          message: data.get(#message, or: $value.message),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsErrorMessageEventCopyWith<$R2, ServerSendsErrorMessageEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsErrorMessageEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}
