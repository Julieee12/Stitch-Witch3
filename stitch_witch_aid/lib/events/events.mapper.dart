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
      ClientGetsAllItemsWithTagsEventMapper.ensureInitialized();
      ClientCreatesNewItemEventMapper.ensureInitialized();
      ClientUpdatesItemEventMapper.ensureInitialized();
      ClientDeletesItemEventMapper.ensureInitialized();
      ClientGetsAllTagsEventMapper.ensureInitialized();
      ClientAddsTagToItemEventMapper.ensureInitialized();
      ClientDeletesTagFromItemEventMapper.ensureInitialized();
      ServerSendsAllItemsEventMapper.ensureInitialized();
      ServerSendsAllItemsWithTagsEventMapper.ensureInitialized();
      ServerSendsCreatedItemEventMapper.ensureInitialized();
      ServerSendsUpdatedItemEventMapper.ensureInitialized();
      ServerDeletedItemEventMapper.ensureInitialized();
      ServerSendsAllTagsEventMapper.ensureInitialized();
      ServerSendsCreatedItemTagEventMapper.ensureInitialized();
      ServerDeletedTagFromItemEventMapper.ensureInitialized();
      ClientGetsAllProjectsEventMapper.ensureInitialized();
      ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized();
      ClientCreatesNewProjectEventMapper.ensureInitialized();
      ClientDeletesProjectEventMapper.ensureInitialized();
      ClientUpdatesProjectEventMapper.ensureInitialized();
      ClientAddsTagToProjectEventMapper.ensureInitialized();
      ClientDeletesTagFromProjectEventMapper.ensureInitialized();
      ServerSendsAllProjectsEventMapper.ensureInitialized();
      ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized();
      ServerSendsCreatedProjectEventMapper.ensureInitialized();
      ServerDeletedProjectEventMapper.ensureInitialized();
      ServerSendsUpdatedProjectEventMapper.ensureInitialized();
      ServerSendsCreatedProjectTagEventMapper.ensureInitialized();
      ServerDeletedTagFromProjectEventMapper.ensureInitialized();
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

class ClientGetsAllItemsWithTagsEventMapper
    extends SubClassMapperBase<ClientGetsAllItemsWithTagsEvent> {
  ClientGetsAllItemsWithTagsEventMapper._();

  static ClientGetsAllItemsWithTagsEventMapper? _instance;
  static ClientGetsAllItemsWithTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllItemsWithTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllItemsWithTagsEvent';

  static String _$eventType(ClientGetsAllItemsWithTagsEvent v) => v.eventType;
  static const Field<ClientGetsAllItemsWithTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllItemsWithTagsEvent v) => v.requestId;
  static const Field<ClientGetsAllItemsWithTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllItemsWithTagsEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllItemsWithTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllItemsWithTagsEvent _instantiate(DecodingData data) {
    return ClientGetsAllItemsWithTagsEvent(
        eventType: data.dec(_f$eventType), requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllItemsWithTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllItemsWithTagsEvent>(map);
  }

  static ClientGetsAllItemsWithTagsEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ClientGetsAllItemsWithTagsEvent>(json);
  }
}

mixin ClientGetsAllItemsWithTagsEventMappable {
  String toJson() {
    return ClientGetsAllItemsWithTagsEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllItemsWithTagsEvent>(
            this as ClientGetsAllItemsWithTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllItemsWithTagsEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllItemsWithTagsEvent>(
            this as ClientGetsAllItemsWithTagsEvent);
  }

  ClientGetsAllItemsWithTagsEventCopyWith<ClientGetsAllItemsWithTagsEvent,
          ClientGetsAllItemsWithTagsEvent, ClientGetsAllItemsWithTagsEvent>
      get copyWith => _ClientGetsAllItemsWithTagsEventCopyWithImpl<
              ClientGetsAllItemsWithTagsEvent, ClientGetsAllItemsWithTagsEvent>(
          this as ClientGetsAllItemsWithTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllItemsWithTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllItemsWithTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllItemsWithTagsEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllItemsWithTagsEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllItemsWithTagsEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllItemsWithTagsEvent);
  }
}

extension ClientGetsAllItemsWithTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllItemsWithTagsEvent, $Out> {
  ClientGetsAllItemsWithTagsEventCopyWith<$R, ClientGetsAllItemsWithTagsEvent,
          $Out>
      get $asClientGetsAllItemsWithTagsEvent => $base.as((v, t, t2) =>
          _ClientGetsAllItemsWithTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllItemsWithTagsEventCopyWith<
    $R,
    $In extends ClientGetsAllItemsWithTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? requestId});
  ClientGetsAllItemsWithTagsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllItemsWithTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllItemsWithTagsEvent, $Out>
    implements
        ClientGetsAllItemsWithTagsEventCopyWith<$R,
            ClientGetsAllItemsWithTagsEvent, $Out> {
  _ClientGetsAllItemsWithTagsEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllItemsWithTagsEvent> $mapper =
      ClientGetsAllItemsWithTagsEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllItemsWithTagsEvent $make(CopyWithData data) =>
      ClientGetsAllItemsWithTagsEvent(
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllItemsWithTagsEventCopyWith<$R2, ClientGetsAllItemsWithTagsEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientGetsAllItemsWithTagsEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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

class ClientGetsAllTagsEventMapper
    extends SubClassMapperBase<ClientGetsAllTagsEvent> {
  ClientGetsAllTagsEventMapper._();

  static ClientGetsAllTagsEventMapper? _instance;
  static ClientGetsAllTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientGetsAllTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllTagsEvent';

  static String _$eventType(ClientGetsAllTagsEvent v) => v.eventType;
  static const Field<ClientGetsAllTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllTagsEvent v) => v.requestId;
  static const Field<ClientGetsAllTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllTagsEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllTagsEvent _instantiate(DecodingData data) {
    return ClientGetsAllTagsEvent(
        eventType: data.dec(_f$eventType), requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllTagsEvent>(map);
  }

  static ClientGetsAllTagsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientGetsAllTagsEvent>(json);
  }
}

mixin ClientGetsAllTagsEventMappable {
  String toJson() {
    return ClientGetsAllTagsEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllTagsEvent>(this as ClientGetsAllTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllTagsEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllTagsEvent>(this as ClientGetsAllTagsEvent);
  }

  ClientGetsAllTagsEventCopyWith<ClientGetsAllTagsEvent, ClientGetsAllTagsEvent,
          ClientGetsAllTagsEvent>
      get copyWith => _ClientGetsAllTagsEventCopyWithImpl<
              ClientGetsAllTagsEvent, ClientGetsAllTagsEvent>(
          this as ClientGetsAllTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllTagsEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllTagsEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllTagsEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllTagsEvent);
  }
}

extension ClientGetsAllTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllTagsEvent, $Out> {
  ClientGetsAllTagsEventCopyWith<$R, ClientGetsAllTagsEvent, $Out>
      get $asClientGetsAllTagsEvent => $base.as((v, t, t2) =>
          _ClientGetsAllTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllTagsEventCopyWith<
    $R,
    $In extends ClientGetsAllTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? requestId});
  ClientGetsAllTagsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllTagsEvent, $Out>
    implements
        ClientGetsAllTagsEventCopyWith<$R, ClientGetsAllTagsEvent, $Out> {
  _ClientGetsAllTagsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllTagsEvent> $mapper =
      ClientGetsAllTagsEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllTagsEvent $make(CopyWithData data) => ClientGetsAllTagsEvent(
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllTagsEventCopyWith<$R2, ClientGetsAllTagsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientGetsAllTagsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientAddsTagToItemEventMapper
    extends SubClassMapperBase<ClientAddsTagToItemEvent> {
  ClientAddsTagToItemEventMapper._();

  static ClientAddsTagToItemEventMapper? _instance;
  static ClientAddsTagToItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientAddsTagToItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientAddsTagToItemEvent';

  static String _$itemId(ClientAddsTagToItemEvent v) => v.itemId;
  static const Field<ClientAddsTagToItemEvent, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$typeId(ClientAddsTagToItemEvent v) => v.typeId;
  static const Field<ClientAddsTagToItemEvent, String> _f$typeId =
      Field('typeId', _$typeId);
  static String _$eventType(ClientAddsTagToItemEvent v) => v.eventType;
  static const Field<ClientAddsTagToItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientAddsTagToItemEvent v) => v.requestId;
  static const Field<ClientAddsTagToItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientAddsTagToItemEvent> fields = const {
    #itemId: _f$itemId,
    #typeId: _f$typeId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientAddsTagToItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientAddsTagToItemEvent _instantiate(DecodingData data) {
    return ClientAddsTagToItemEvent(
        itemId: data.dec(_f$itemId),
        typeId: data.dec(_f$typeId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientAddsTagToItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientAddsTagToItemEvent>(map);
  }

  static ClientAddsTagToItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientAddsTagToItemEvent>(json);
  }
}

mixin ClientAddsTagToItemEventMappable {
  String toJson() {
    return ClientAddsTagToItemEventMapper.ensureInitialized()
        .encodeJson<ClientAddsTagToItemEvent>(this as ClientAddsTagToItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientAddsTagToItemEventMapper.ensureInitialized()
        .encodeMap<ClientAddsTagToItemEvent>(this as ClientAddsTagToItemEvent);
  }

  ClientAddsTagToItemEventCopyWith<ClientAddsTagToItemEvent,
          ClientAddsTagToItemEvent, ClientAddsTagToItemEvent>
      get copyWith => _ClientAddsTagToItemEventCopyWithImpl<
              ClientAddsTagToItemEvent, ClientAddsTagToItemEvent>(
          this as ClientAddsTagToItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientAddsTagToItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientAddsTagToItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientAddsTagToItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientAddsTagToItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientAddsTagToItemEventMapper.ensureInitialized()
        .hashValue(this as ClientAddsTagToItemEvent);
  }
}

extension ClientAddsTagToItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientAddsTagToItemEvent, $Out> {
  ClientAddsTagToItemEventCopyWith<$R, ClientAddsTagToItemEvent, $Out>
      get $asClientAddsTagToItemEvent => $base.as((v, t, t2) =>
          _ClientAddsTagToItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientAddsTagToItemEventCopyWith<
    $R,
    $In extends ClientAddsTagToItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? itemId, String? typeId, String? eventType, String? requestId});
  ClientAddsTagToItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientAddsTagToItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientAddsTagToItemEvent, $Out>
    implements
        ClientAddsTagToItemEventCopyWith<$R, ClientAddsTagToItemEvent, $Out> {
  _ClientAddsTagToItemEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientAddsTagToItemEvent> $mapper =
      ClientAddsTagToItemEventMapper.ensureInitialized();
  @override
  $R call(
          {String? itemId,
          String? typeId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (typeId != null) #typeId: typeId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientAddsTagToItemEvent $make(CopyWithData data) => ClientAddsTagToItemEvent(
      itemId: data.get(#itemId, or: $value.itemId),
      typeId: data.get(#typeId, or: $value.typeId),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientAddsTagToItemEventCopyWith<$R2, ClientAddsTagToItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientAddsTagToItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClientDeletesTagFromItemEventMapper
    extends SubClassMapperBase<ClientDeletesTagFromItemEvent> {
  ClientDeletesTagFromItemEventMapper._();

  static ClientDeletesTagFromItemEventMapper? _instance;
  static ClientDeletesTagFromItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientDeletesTagFromItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientDeletesTagFromItemEvent';

  static String _$itemId(ClientDeletesTagFromItemEvent v) => v.itemId;
  static const Field<ClientDeletesTagFromItemEvent, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$typeId(ClientDeletesTagFromItemEvent v) => v.typeId;
  static const Field<ClientDeletesTagFromItemEvent, String> _f$typeId =
      Field('typeId', _$typeId);
  static String _$eventType(ClientDeletesTagFromItemEvent v) => v.eventType;
  static const Field<ClientDeletesTagFromItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientDeletesTagFromItemEvent v) => v.requestId;
  static const Field<ClientDeletesTagFromItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientDeletesTagFromItemEvent> fields = const {
    #itemId: _f$itemId,
    #typeId: _f$typeId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientDeletesTagFromItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientDeletesTagFromItemEvent _instantiate(DecodingData data) {
    return ClientDeletesTagFromItemEvent(
        itemId: data.dec(_f$itemId),
        typeId: data.dec(_f$typeId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientDeletesTagFromItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientDeletesTagFromItemEvent>(map);
  }

  static ClientDeletesTagFromItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientDeletesTagFromItemEvent>(json);
  }
}

mixin ClientDeletesTagFromItemEventMappable {
  String toJson() {
    return ClientDeletesTagFromItemEventMapper.ensureInitialized()
        .encodeJson<ClientDeletesTagFromItemEvent>(
            this as ClientDeletesTagFromItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientDeletesTagFromItemEventMapper.ensureInitialized()
        .encodeMap<ClientDeletesTagFromItemEvent>(
            this as ClientDeletesTagFromItemEvent);
  }

  ClientDeletesTagFromItemEventCopyWith<ClientDeletesTagFromItemEvent,
          ClientDeletesTagFromItemEvent, ClientDeletesTagFromItemEvent>
      get copyWith => _ClientDeletesTagFromItemEventCopyWithImpl<
              ClientDeletesTagFromItemEvent, ClientDeletesTagFromItemEvent>(
          this as ClientDeletesTagFromItemEvent, $identity, $identity);
  @override
  String toString() {
    return ClientDeletesTagFromItemEventMapper.ensureInitialized()
        .stringifyValue(this as ClientDeletesTagFromItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientDeletesTagFromItemEventMapper.ensureInitialized()
        .equalsValue(this as ClientDeletesTagFromItemEvent, other);
  }

  @override
  int get hashCode {
    return ClientDeletesTagFromItemEventMapper.ensureInitialized()
        .hashValue(this as ClientDeletesTagFromItemEvent);
  }
}

extension ClientDeletesTagFromItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientDeletesTagFromItemEvent, $Out> {
  ClientDeletesTagFromItemEventCopyWith<$R, ClientDeletesTagFromItemEvent, $Out>
      get $asClientDeletesTagFromItemEvent => $base.as((v, t, t2) =>
          _ClientDeletesTagFromItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientDeletesTagFromItemEventCopyWith<
    $R,
    $In extends ClientDeletesTagFromItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? itemId, String? typeId, String? eventType, String? requestId});
  ClientDeletesTagFromItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientDeletesTagFromItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientDeletesTagFromItemEvent, $Out>
    implements
        ClientDeletesTagFromItemEventCopyWith<$R, ClientDeletesTagFromItemEvent,
            $Out> {
  _ClientDeletesTagFromItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientDeletesTagFromItemEvent> $mapper =
      ClientDeletesTagFromItemEventMapper.ensureInitialized();
  @override
  $R call(
          {String? itemId,
          String? typeId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (typeId != null) #typeId: typeId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientDeletesTagFromItemEvent $make(CopyWithData data) =>
      ClientDeletesTagFromItemEvent(
          itemId: data.get(#itemId, or: $value.itemId),
          typeId: data.get(#typeId, or: $value.typeId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientDeletesTagFromItemEventCopyWith<$R2, ClientDeletesTagFromItemEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientDeletesTagFromItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
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

class ServerSendsAllItemsWithTagsEventMapper
    extends SubClassMapperBase<ServerSendsAllItemsWithTagsEvent> {
  ServerSendsAllItemsWithTagsEventMapper._();

  static ServerSendsAllItemsWithTagsEventMapper? _instance;
  static ServerSendsAllItemsWithTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllItemsWithTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      InventoryItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllItemsWithTagsEvent';

  static List<InventoryItemModel> _$itemsWithTags(
          ServerSendsAllItemsWithTagsEvent v) =>
      v.itemsWithTags;
  static const Field<ServerSendsAllItemsWithTagsEvent, List<InventoryItemModel>>
      _f$itemsWithTags = Field('itemsWithTags', _$itemsWithTags);
  static String _$eventType(ServerSendsAllItemsWithTagsEvent v) => v.eventType;
  static const Field<ServerSendsAllItemsWithTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllItemsWithTagsEvent v) => v.requestId;
  static const Field<ServerSendsAllItemsWithTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllItemsWithTagsEvent> fields = const {
    #itemsWithTags: _f$itemsWithTags,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllItemsWithTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllItemsWithTagsEvent _instantiate(DecodingData data) {
    return ServerSendsAllItemsWithTagsEvent(
        itemsWithTags: data.dec(_f$itemsWithTags),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllItemsWithTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllItemsWithTagsEvent>(map);
  }

  static ServerSendsAllItemsWithTagsEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsAllItemsWithTagsEvent>(json);
  }
}

mixin ServerSendsAllItemsWithTagsEventMappable {
  String toJson() {
    return ServerSendsAllItemsWithTagsEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllItemsWithTagsEvent>(
            this as ServerSendsAllItemsWithTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllItemsWithTagsEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllItemsWithTagsEvent>(
            this as ServerSendsAllItemsWithTagsEvent);
  }

  ServerSendsAllItemsWithTagsEventCopyWith<ServerSendsAllItemsWithTagsEvent,
          ServerSendsAllItemsWithTagsEvent, ServerSendsAllItemsWithTagsEvent>
      get copyWith => _ServerSendsAllItemsWithTagsEventCopyWithImpl<
              ServerSendsAllItemsWithTagsEvent,
              ServerSendsAllItemsWithTagsEvent>(
          this as ServerSendsAllItemsWithTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllItemsWithTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllItemsWithTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllItemsWithTagsEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllItemsWithTagsEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllItemsWithTagsEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllItemsWithTagsEvent);
  }
}

extension ServerSendsAllItemsWithTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllItemsWithTagsEvent, $Out> {
  ServerSendsAllItemsWithTagsEventCopyWith<$R, ServerSendsAllItemsWithTagsEvent,
          $Out>
      get $asServerSendsAllItemsWithTagsEvent => $base.as((v, t, t2) =>
          _ServerSendsAllItemsWithTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllItemsWithTagsEventCopyWith<
    $R,
    $In extends ServerSendsAllItemsWithTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      InventoryItemModel,
      InventoryItemModelCopyWith<$R, InventoryItemModel,
          InventoryItemModel>> get itemsWithTags;
  @override
  $R call(
      {List<InventoryItemModel>? itemsWithTags,
      String? eventType,
      String? requestId});
  ServerSendsAllItemsWithTagsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllItemsWithTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllItemsWithTagsEvent, $Out>
    implements
        ServerSendsAllItemsWithTagsEventCopyWith<$R,
            ServerSendsAllItemsWithTagsEvent, $Out> {
  _ServerSendsAllItemsWithTagsEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllItemsWithTagsEvent> $mapper =
      ServerSendsAllItemsWithTagsEventMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      InventoryItemModel,
      InventoryItemModelCopyWith<$R, InventoryItemModel,
          InventoryItemModel>> get itemsWithTags => ListCopyWith(
      $value.itemsWithTags,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(itemsWithTags: v));
  @override
  $R call(
          {List<InventoryItemModel>? itemsWithTags,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemsWithTags != null) #itemsWithTags: itemsWithTags,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllItemsWithTagsEvent $make(CopyWithData data) =>
      ServerSendsAllItemsWithTagsEvent(
          itemsWithTags: data.get(#itemsWithTags, or: $value.itemsWithTags),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllItemsWithTagsEventCopyWith<$R2,
      ServerSendsAllItemsWithTagsEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsAllItemsWithTagsEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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

  static InventoryItemModel _$item(ServerSendsCreatedItemEvent v) => v.item;
  static const Field<ServerSendsCreatedItemEvent, InventoryItemModel> _f$item =
      Field('item', _$item);
  static String _$eventType(ServerSendsCreatedItemEvent v) => v.eventType;
  static const Field<ServerSendsCreatedItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsCreatedItemEvent v) => v.requestId;
  static const Field<ServerSendsCreatedItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsCreatedItemEvent> fields = const {
    #item: _f$item,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsCreatedItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsCreatedItemEvent _instantiate(DecodingData data) {
    return ServerSendsCreatedItemEvent(
        item: data.dec(_f$item),
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
      get item;
  @override
  $R call({InventoryItemModel? item, String? eventType, String? requestId});
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
      get item => $value.item.copyWith.$chain((v) => call(item: v));
  @override
  $R call({InventoryItemModel? item, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (item != null) #item: item,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsCreatedItemEvent $make(CopyWithData data) =>
      ServerSendsCreatedItemEvent(
          item: data.get(#item, or: $value.item),
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

  static InventoryItemModel _$itemDto(ServerSendsUpdatedItemEvent v) =>
      v.itemDto;
  static const Field<ServerSendsUpdatedItemEvent, InventoryItemModel>
      _f$itemDto = Field('itemDto', _$itemDto);
  static String _$eventType(ServerSendsUpdatedItemEvent v) => v.eventType;
  static const Field<ServerSendsUpdatedItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsUpdatedItemEvent v) => v.requestId;
  static const Field<ServerSendsUpdatedItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsUpdatedItemEvent> fields = const {
    #itemDto: _f$itemDto,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsUpdatedItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsUpdatedItemEvent _instantiate(DecodingData data) {
    return ServerSendsUpdatedItemEvent(
        itemDto: data.dec(_f$itemDto),
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
      get itemDto;
  @override
  $R call({InventoryItemModel? itemDto, String? eventType, String? requestId});
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
      get itemDto => $value.itemDto.copyWith.$chain((v) => call(itemDto: v));
  @override
  $R call(
          {InventoryItemModel? itemDto,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemDto != null) #itemDto: itemDto,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsUpdatedItemEvent $make(CopyWithData data) =>
      ServerSendsUpdatedItemEvent(
          itemDto: data.get(#itemDto, or: $value.itemDto),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsUpdatedItemEventCopyWith<$R2, ServerSendsUpdatedItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsUpdatedItemEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ServerDeletedItemEventMapper
    extends SubClassMapperBase<ServerDeletedItemEvent> {
  ServerDeletedItemEventMapper._();

  static ServerDeletedItemEventMapper? _instance;
  static ServerDeletedItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerDeletedItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerDeletedItemEvent';

  static String _$itemId(ServerDeletedItemEvent v) => v.itemId;
  static const Field<ServerDeletedItemEvent, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$eventType(ServerDeletedItemEvent v) => v.eventType;
  static const Field<ServerDeletedItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerDeletedItemEvent v) => v.requestId;
  static const Field<ServerDeletedItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerDeletedItemEvent> fields = const {
    #itemId: _f$itemId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerDeletedItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerDeletedItemEvent _instantiate(DecodingData data) {
    return ServerDeletedItemEvent(
        itemId: data.dec(_f$itemId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerDeletedItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerDeletedItemEvent>(map);
  }

  static ServerDeletedItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerDeletedItemEvent>(json);
  }
}

mixin ServerDeletedItemEventMappable {
  String toJson() {
    return ServerDeletedItemEventMapper.ensureInitialized()
        .encodeJson<ServerDeletedItemEvent>(this as ServerDeletedItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerDeletedItemEventMapper.ensureInitialized()
        .encodeMap<ServerDeletedItemEvent>(this as ServerDeletedItemEvent);
  }

  ServerDeletedItemEventCopyWith<ServerDeletedItemEvent, ServerDeletedItemEvent,
          ServerDeletedItemEvent>
      get copyWith => _ServerDeletedItemEventCopyWithImpl<
              ServerDeletedItemEvent, ServerDeletedItemEvent>(
          this as ServerDeletedItemEvent, $identity, $identity);
  @override
  String toString() {
    return ServerDeletedItemEventMapper.ensureInitialized()
        .stringifyValue(this as ServerDeletedItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerDeletedItemEventMapper.ensureInitialized()
        .equalsValue(this as ServerDeletedItemEvent, other);
  }

  @override
  int get hashCode {
    return ServerDeletedItemEventMapper.ensureInitialized()
        .hashValue(this as ServerDeletedItemEvent);
  }
}

extension ServerDeletedItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerDeletedItemEvent, $Out> {
  ServerDeletedItemEventCopyWith<$R, ServerDeletedItemEvent, $Out>
      get $asServerDeletedItemEvent => $base.as((v, t, t2) =>
          _ServerDeletedItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerDeletedItemEventCopyWith<
    $R,
    $In extends ServerDeletedItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? itemId, String? eventType, String? requestId});
  ServerDeletedItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerDeletedItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerDeletedItemEvent, $Out>
    implements
        ServerDeletedItemEventCopyWith<$R, ServerDeletedItemEvent, $Out> {
  _ServerDeletedItemEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerDeletedItemEvent> $mapper =
      ServerDeletedItemEventMapper.ensureInitialized();
  @override
  $R call({String? itemId, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerDeletedItemEvent $make(CopyWithData data) => ServerDeletedItemEvent(
      itemId: data.get(#itemId, or: $value.itemId),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerDeletedItemEventCopyWith<$R2, ServerDeletedItemEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerDeletedItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsAllTagsEventMapper
    extends SubClassMapperBase<ServerSendsAllTagsEvent> {
  ServerSendsAllTagsEventMapper._();

  static ServerSendsAllTagsEventMapper? _instance;
  static ServerSendsAllTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      TagDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllTagsEvent';

  static List<TagDto> _$allTags(ServerSendsAllTagsEvent v) => v.allTags;
  static const Field<ServerSendsAllTagsEvent, List<TagDto>> _f$allTags =
      Field('allTags', _$allTags);
  static String _$eventType(ServerSendsAllTagsEvent v) => v.eventType;
  static const Field<ServerSendsAllTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllTagsEvent v) => v.requestId;
  static const Field<ServerSendsAllTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllTagsEvent> fields = const {
    #allTags: _f$allTags,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllTagsEvent _instantiate(DecodingData data) {
    return ServerSendsAllTagsEvent(
        allTags: data.dec(_f$allTags),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllTagsEvent>(map);
  }

  static ServerSendsAllTagsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsAllTagsEvent>(json);
  }
}

mixin ServerSendsAllTagsEventMappable {
  String toJson() {
    return ServerSendsAllTagsEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllTagsEvent>(this as ServerSendsAllTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllTagsEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllTagsEvent>(this as ServerSendsAllTagsEvent);
  }

  ServerSendsAllTagsEventCopyWith<ServerSendsAllTagsEvent,
          ServerSendsAllTagsEvent, ServerSendsAllTagsEvent>
      get copyWith => _ServerSendsAllTagsEventCopyWithImpl<
              ServerSendsAllTagsEvent, ServerSendsAllTagsEvent>(
          this as ServerSendsAllTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllTagsEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllTagsEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllTagsEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllTagsEvent);
  }
}

extension ServerSendsAllTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllTagsEvent, $Out> {
  ServerSendsAllTagsEventCopyWith<$R, ServerSendsAllTagsEvent, $Out>
      get $asServerSendsAllTagsEvent => $base.as((v, t, t2) =>
          _ServerSendsAllTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllTagsEventCopyWith<
    $R,
    $In extends ServerSendsAllTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TagDto, TagDtoCopyWith<$R, TagDto, TagDto>> get allTags;
  @override
  $R call({List<TagDto>? allTags, String? eventType, String? requestId});
  ServerSendsAllTagsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllTagsEvent, $Out>
    implements
        ServerSendsAllTagsEventCopyWith<$R, ServerSendsAllTagsEvent, $Out> {
  _ServerSendsAllTagsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllTagsEvent> $mapper =
      ServerSendsAllTagsEventMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TagDto, TagDtoCopyWith<$R, TagDto, TagDto>> get allTags =>
      ListCopyWith($value.allTags, (v, t) => v.copyWith.$chain(t),
          (v) => call(allTags: v));
  @override
  $R call({List<TagDto>? allTags, String? eventType, String? requestId}) =>
      $apply(FieldCopyWithData({
        if (allTags != null) #allTags: allTags,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllTagsEvent $make(CopyWithData data) => ServerSendsAllTagsEvent(
      allTags: data.get(#allTags, or: $value.allTags),
      eventType: data.get(#eventType, or: $value.eventType),
      requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllTagsEventCopyWith<$R2, ServerSendsAllTagsEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsAllTagsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerSendsCreatedItemTagEventMapper
    extends SubClassMapperBase<ServerSendsCreatedItemTagEvent> {
  ServerSendsCreatedItemTagEventMapper._();

  static ServerSendsCreatedItemTagEventMapper? _instance;
  static ServerSendsCreatedItemTagEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsCreatedItemTagEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      TagDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsCreatedItemTagEvent';

  static String _$itemId(ServerSendsCreatedItemTagEvent v) => v.itemId;
  static const Field<ServerSendsCreatedItemTagEvent, String> _f$itemId =
      Field('itemId', _$itemId);
  static TagDto _$tag(ServerSendsCreatedItemTagEvent v) => v.tag;
  static const Field<ServerSendsCreatedItemTagEvent, TagDto> _f$tag =
      Field('tag', _$tag);
  static String _$eventType(ServerSendsCreatedItemTagEvent v) => v.eventType;
  static const Field<ServerSendsCreatedItemTagEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsCreatedItemTagEvent v) => v.requestId;
  static const Field<ServerSendsCreatedItemTagEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsCreatedItemTagEvent> fields = const {
    #itemId: _f$itemId,
    #tag: _f$tag,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsCreatedItemTagEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsCreatedItemTagEvent _instantiate(DecodingData data) {
    return ServerSendsCreatedItemTagEvent(
        itemId: data.dec(_f$itemId),
        tag: data.dec(_f$tag),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsCreatedItemTagEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsCreatedItemTagEvent>(map);
  }

  static ServerSendsCreatedItemTagEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsCreatedItemTagEvent>(json);
  }
}

mixin ServerSendsCreatedItemTagEventMappable {
  String toJson() {
    return ServerSendsCreatedItemTagEventMapper.ensureInitialized()
        .encodeJson<ServerSendsCreatedItemTagEvent>(
            this as ServerSendsCreatedItemTagEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsCreatedItemTagEventMapper.ensureInitialized()
        .encodeMap<ServerSendsCreatedItemTagEvent>(
            this as ServerSendsCreatedItemTagEvent);
  }

  ServerSendsCreatedItemTagEventCopyWith<ServerSendsCreatedItemTagEvent,
          ServerSendsCreatedItemTagEvent, ServerSendsCreatedItemTagEvent>
      get copyWith => _ServerSendsCreatedItemTagEventCopyWithImpl<
              ServerSendsCreatedItemTagEvent, ServerSendsCreatedItemTagEvent>(
          this as ServerSendsCreatedItemTagEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsCreatedItemTagEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsCreatedItemTagEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsCreatedItemTagEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsCreatedItemTagEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsCreatedItemTagEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsCreatedItemTagEvent);
  }
}

extension ServerSendsCreatedItemTagEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsCreatedItemTagEvent, $Out> {
  ServerSendsCreatedItemTagEventCopyWith<$R, ServerSendsCreatedItemTagEvent,
          $Out>
      get $asServerSendsCreatedItemTagEvent => $base.as((v, t, t2) =>
          _ServerSendsCreatedItemTagEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsCreatedItemTagEventCopyWith<
    $R,
    $In extends ServerSendsCreatedItemTagEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  TagDtoCopyWith<$R, TagDto, TagDto> get tag;
  @override
  $R call({String? itemId, TagDto? tag, String? eventType, String? requestId});
  ServerSendsCreatedItemTagEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsCreatedItemTagEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsCreatedItemTagEvent, $Out>
    implements
        ServerSendsCreatedItemTagEventCopyWith<$R,
            ServerSendsCreatedItemTagEvent, $Out> {
  _ServerSendsCreatedItemTagEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsCreatedItemTagEvent> $mapper =
      ServerSendsCreatedItemTagEventMapper.ensureInitialized();
  @override
  TagDtoCopyWith<$R, TagDto, TagDto> get tag =>
      $value.tag.copyWith.$chain((v) => call(tag: v));
  @override
  $R call(
          {String? itemId,
          TagDto? tag,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (tag != null) #tag: tag,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsCreatedItemTagEvent $make(CopyWithData data) =>
      ServerSendsCreatedItemTagEvent(
          itemId: data.get(#itemId, or: $value.itemId),
          tag: data.get(#tag, or: $value.tag),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsCreatedItemTagEventCopyWith<$R2, ServerSendsCreatedItemTagEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsCreatedItemTagEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerDeletedTagFromItemEventMapper
    extends SubClassMapperBase<ServerDeletedTagFromItemEvent> {
  ServerDeletedTagFromItemEventMapper._();

  static ServerDeletedTagFromItemEventMapper? _instance;
  static ServerDeletedTagFromItemEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerDeletedTagFromItemEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerDeletedTagFromItemEvent';

  static String _$itemId(ServerDeletedTagFromItemEvent v) => v.itemId;
  static const Field<ServerDeletedTagFromItemEvent, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$tagId(ServerDeletedTagFromItemEvent v) => v.tagId;
  static const Field<ServerDeletedTagFromItemEvent, String> _f$tagId =
      Field('tagId', _$tagId);
  static String _$eventType(ServerDeletedTagFromItemEvent v) => v.eventType;
  static const Field<ServerDeletedTagFromItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerDeletedTagFromItemEvent v) => v.requestId;
  static const Field<ServerDeletedTagFromItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerDeletedTagFromItemEvent> fields = const {
    #itemId: _f$itemId,
    #tagId: _f$tagId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerDeletedTagFromItemEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerDeletedTagFromItemEvent _instantiate(DecodingData data) {
    return ServerDeletedTagFromItemEvent(
        itemId: data.dec(_f$itemId),
        tagId: data.dec(_f$tagId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerDeletedTagFromItemEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerDeletedTagFromItemEvent>(map);
  }

  static ServerDeletedTagFromItemEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerDeletedTagFromItemEvent>(json);
  }
}

mixin ServerDeletedTagFromItemEventMappable {
  String toJson() {
    return ServerDeletedTagFromItemEventMapper.ensureInitialized()
        .encodeJson<ServerDeletedTagFromItemEvent>(
            this as ServerDeletedTagFromItemEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerDeletedTagFromItemEventMapper.ensureInitialized()
        .encodeMap<ServerDeletedTagFromItemEvent>(
            this as ServerDeletedTagFromItemEvent);
  }

  ServerDeletedTagFromItemEventCopyWith<ServerDeletedTagFromItemEvent,
          ServerDeletedTagFromItemEvent, ServerDeletedTagFromItemEvent>
      get copyWith => _ServerDeletedTagFromItemEventCopyWithImpl<
              ServerDeletedTagFromItemEvent, ServerDeletedTagFromItemEvent>(
          this as ServerDeletedTagFromItemEvent, $identity, $identity);
  @override
  String toString() {
    return ServerDeletedTagFromItemEventMapper.ensureInitialized()
        .stringifyValue(this as ServerDeletedTagFromItemEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerDeletedTagFromItemEventMapper.ensureInitialized()
        .equalsValue(this as ServerDeletedTagFromItemEvent, other);
  }

  @override
  int get hashCode {
    return ServerDeletedTagFromItemEventMapper.ensureInitialized()
        .hashValue(this as ServerDeletedTagFromItemEvent);
  }
}

extension ServerDeletedTagFromItemEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerDeletedTagFromItemEvent, $Out> {
  ServerDeletedTagFromItemEventCopyWith<$R, ServerDeletedTagFromItemEvent, $Out>
      get $asServerDeletedTagFromItemEvent => $base.as((v, t, t2) =>
          _ServerDeletedTagFromItemEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerDeletedTagFromItemEventCopyWith<
    $R,
    $In extends ServerDeletedTagFromItemEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? itemId, String? tagId, String? eventType, String? requestId});
  ServerDeletedTagFromItemEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerDeletedTagFromItemEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerDeletedTagFromItemEvent, $Out>
    implements
        ServerDeletedTagFromItemEventCopyWith<$R, ServerDeletedTagFromItemEvent,
            $Out> {
  _ServerDeletedTagFromItemEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerDeletedTagFromItemEvent> $mapper =
      ServerDeletedTagFromItemEventMapper.ensureInitialized();
  @override
  $R call(
          {String? itemId,
          String? tagId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (itemId != null) #itemId: itemId,
        if (tagId != null) #tagId: tagId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerDeletedTagFromItemEvent $make(CopyWithData data) =>
      ServerDeletedTagFromItemEvent(
          itemId: data.get(#itemId, or: $value.itemId),
          tagId: data.get(#tagId, or: $value.tagId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerDeletedTagFromItemEventCopyWith<$R2, ServerDeletedTagFromItemEvent,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerDeletedTagFromItemEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
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

class ClientGetsAllProjectsWithTagsEventMapper
    extends SubClassMapperBase<ClientGetsAllProjectsWithTagsEvent> {
  ClientGetsAllProjectsWithTagsEventMapper._();

  static ClientGetsAllProjectsWithTagsEventMapper? _instance;
  static ClientGetsAllProjectsWithTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllProjectsWithTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllProjectsWithTagsEvent';

  static String _$eventType(ClientGetsAllProjectsWithTagsEvent v) =>
      v.eventType;
  static const Field<ClientGetsAllProjectsWithTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllProjectsWithTagsEvent v) =>
      v.requestId;
  static const Field<ClientGetsAllProjectsWithTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllProjectsWithTagsEvent> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientGetsAllProjectsWithTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientGetsAllProjectsWithTagsEvent _instantiate(DecodingData data) {
    return ClientGetsAllProjectsWithTagsEvent(
        eventType: data.dec(_f$eventType), requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllProjectsWithTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ClientGetsAllProjectsWithTagsEvent>(map);
  }

  static ClientGetsAllProjectsWithTagsEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ClientGetsAllProjectsWithTagsEvent>(json);
  }
}

mixin ClientGetsAllProjectsWithTagsEventMappable {
  String toJson() {
    return ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized()
        .encodeJson<ClientGetsAllProjectsWithTagsEvent>(
            this as ClientGetsAllProjectsWithTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized()
        .encodeMap<ClientGetsAllProjectsWithTagsEvent>(
            this as ClientGetsAllProjectsWithTagsEvent);
  }

  ClientGetsAllProjectsWithTagsEventCopyWith<
          ClientGetsAllProjectsWithTagsEvent,
          ClientGetsAllProjectsWithTagsEvent,
          ClientGetsAllProjectsWithTagsEvent>
      get copyWith => _ClientGetsAllProjectsWithTagsEventCopyWithImpl<
              ClientGetsAllProjectsWithTagsEvent,
              ClientGetsAllProjectsWithTagsEvent>(
          this as ClientGetsAllProjectsWithTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllProjectsWithTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllProjectsWithTagsEvent, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllProjectsWithTagsEvent);
  }
}

extension ClientGetsAllProjectsWithTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllProjectsWithTagsEvent, $Out> {
  ClientGetsAllProjectsWithTagsEventCopyWith<$R,
          ClientGetsAllProjectsWithTagsEvent, $Out>
      get $asClientGetsAllProjectsWithTagsEvent => $base.as((v, t, t2) =>
          _ClientGetsAllProjectsWithTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllProjectsWithTagsEventCopyWith<
    $R,
    $In extends ClientGetsAllProjectsWithTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? requestId});
  ClientGetsAllProjectsWithTagsEventCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClientGetsAllProjectsWithTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllProjectsWithTagsEvent, $Out>
    implements
        ClientGetsAllProjectsWithTagsEventCopyWith<$R,
            ClientGetsAllProjectsWithTagsEvent, $Out> {
  _ClientGetsAllProjectsWithTagsEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllProjectsWithTagsEvent> $mapper =
      ClientGetsAllProjectsWithTagsEventMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllProjectsWithTagsEvent $make(CopyWithData data) =>
      ClientGetsAllProjectsWithTagsEvent(
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllProjectsWithTagsEventCopyWith<$R2,
      ClientGetsAllProjectsWithTagsEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientGetsAllProjectsWithTagsEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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

class ClientAddsTagToProjectEventMapper
    extends SubClassMapperBase<ClientAddsTagToProjectEvent> {
  ClientAddsTagToProjectEventMapper._();

  static ClientAddsTagToProjectEventMapper? _instance;
  static ClientAddsTagToProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientAddsTagToProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientAddsTagToProjectEvent';

  static String _$projectId(ClientAddsTagToProjectEvent v) => v.projectId;
  static const Field<ClientAddsTagToProjectEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static String _$typeId(ClientAddsTagToProjectEvent v) => v.typeId;
  static const Field<ClientAddsTagToProjectEvent, String> _f$typeId =
      Field('typeId', _$typeId);
  static String _$eventType(ClientAddsTagToProjectEvent v) => v.eventType;
  static const Field<ClientAddsTagToProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientAddsTagToProjectEvent v) => v.requestId;
  static const Field<ClientAddsTagToProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientAddsTagToProjectEvent> fields = const {
    #projectId: _f$projectId,
    #typeId: _f$typeId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientAddsTagToProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientAddsTagToProjectEvent _instantiate(DecodingData data) {
    return ClientAddsTagToProjectEvent(
        projectId: data.dec(_f$projectId),
        typeId: data.dec(_f$typeId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientAddsTagToProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientAddsTagToProjectEvent>(map);
  }

  static ClientAddsTagToProjectEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientAddsTagToProjectEvent>(json);
  }
}

mixin ClientAddsTagToProjectEventMappable {
  String toJson() {
    return ClientAddsTagToProjectEventMapper.ensureInitialized()
        .encodeJson<ClientAddsTagToProjectEvent>(
            this as ClientAddsTagToProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientAddsTagToProjectEventMapper.ensureInitialized()
        .encodeMap<ClientAddsTagToProjectEvent>(
            this as ClientAddsTagToProjectEvent);
  }

  ClientAddsTagToProjectEventCopyWith<ClientAddsTagToProjectEvent,
          ClientAddsTagToProjectEvent, ClientAddsTagToProjectEvent>
      get copyWith => _ClientAddsTagToProjectEventCopyWithImpl<
              ClientAddsTagToProjectEvent, ClientAddsTagToProjectEvent>(
          this as ClientAddsTagToProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ClientAddsTagToProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ClientAddsTagToProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientAddsTagToProjectEventMapper.ensureInitialized()
        .equalsValue(this as ClientAddsTagToProjectEvent, other);
  }

  @override
  int get hashCode {
    return ClientAddsTagToProjectEventMapper.ensureInitialized()
        .hashValue(this as ClientAddsTagToProjectEvent);
  }
}

extension ClientAddsTagToProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientAddsTagToProjectEvent, $Out> {
  ClientAddsTagToProjectEventCopyWith<$R, ClientAddsTagToProjectEvent, $Out>
      get $asClientAddsTagToProjectEvent => $base.as((v, t, t2) =>
          _ClientAddsTagToProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientAddsTagToProjectEventCopyWith<
    $R,
    $In extends ClientAddsTagToProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? projectId,
      String? typeId,
      String? eventType,
      String? requestId});
  ClientAddsTagToProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientAddsTagToProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientAddsTagToProjectEvent, $Out>
    implements
        ClientAddsTagToProjectEventCopyWith<$R, ClientAddsTagToProjectEvent,
            $Out> {
  _ClientAddsTagToProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientAddsTagToProjectEvent> $mapper =
      ClientAddsTagToProjectEventMapper.ensureInitialized();
  @override
  $R call(
          {String? projectId,
          String? typeId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (typeId != null) #typeId: typeId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientAddsTagToProjectEvent $make(CopyWithData data) =>
      ClientAddsTagToProjectEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          typeId: data.get(#typeId, or: $value.typeId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientAddsTagToProjectEventCopyWith<$R2, ClientAddsTagToProjectEvent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientAddsTagToProjectEventCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class ClientDeletesTagFromProjectEventMapper
    extends SubClassMapperBase<ClientDeletesTagFromProjectEvent> {
  ClientDeletesTagFromProjectEventMapper._();

  static ClientDeletesTagFromProjectEventMapper? _instance;
  static ClientDeletesTagFromProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientDeletesTagFromProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientDeletesTagFromProjectEvent';

  static String _$projectId(ClientDeletesTagFromProjectEvent v) => v.projectId;
  static const Field<ClientDeletesTagFromProjectEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static String _$typeId(ClientDeletesTagFromProjectEvent v) => v.typeId;
  static const Field<ClientDeletesTagFromProjectEvent, String> _f$typeId =
      Field('typeId', _$typeId);
  static String _$eventType(ClientDeletesTagFromProjectEvent v) => v.eventType;
  static const Field<ClientDeletesTagFromProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientDeletesTagFromProjectEvent v) => v.requestId;
  static const Field<ClientDeletesTagFromProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientDeletesTagFromProjectEvent> fields = const {
    #projectId: _f$projectId,
    #typeId: _f$typeId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ClientDeletesTagFromProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientDeletesTagFromProjectEvent _instantiate(DecodingData data) {
    return ClientDeletesTagFromProjectEvent(
        projectId: data.dec(_f$projectId),
        typeId: data.dec(_f$typeId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientDeletesTagFromProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientDeletesTagFromProjectEvent>(map);
  }

  static ClientDeletesTagFromProjectEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ClientDeletesTagFromProjectEvent>(json);
  }
}

mixin ClientDeletesTagFromProjectEventMappable {
  String toJson() {
    return ClientDeletesTagFromProjectEventMapper.ensureInitialized()
        .encodeJson<ClientDeletesTagFromProjectEvent>(
            this as ClientDeletesTagFromProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ClientDeletesTagFromProjectEventMapper.ensureInitialized()
        .encodeMap<ClientDeletesTagFromProjectEvent>(
            this as ClientDeletesTagFromProjectEvent);
  }

  ClientDeletesTagFromProjectEventCopyWith<ClientDeletesTagFromProjectEvent,
          ClientDeletesTagFromProjectEvent, ClientDeletesTagFromProjectEvent>
      get copyWith => _ClientDeletesTagFromProjectEventCopyWithImpl<
              ClientDeletesTagFromProjectEvent,
              ClientDeletesTagFromProjectEvent>(
          this as ClientDeletesTagFromProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ClientDeletesTagFromProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ClientDeletesTagFromProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ClientDeletesTagFromProjectEventMapper.ensureInitialized()
        .equalsValue(this as ClientDeletesTagFromProjectEvent, other);
  }

  @override
  int get hashCode {
    return ClientDeletesTagFromProjectEventMapper.ensureInitialized()
        .hashValue(this as ClientDeletesTagFromProjectEvent);
  }
}

extension ClientDeletesTagFromProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientDeletesTagFromProjectEvent, $Out> {
  ClientDeletesTagFromProjectEventCopyWith<$R, ClientDeletesTagFromProjectEvent,
          $Out>
      get $asClientDeletesTagFromProjectEvent => $base.as((v, t, t2) =>
          _ClientDeletesTagFromProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientDeletesTagFromProjectEventCopyWith<
    $R,
    $In extends ClientDeletesTagFromProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? projectId,
      String? typeId,
      String? eventType,
      String? requestId});
  ClientDeletesTagFromProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientDeletesTagFromProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientDeletesTagFromProjectEvent, $Out>
    implements
        ClientDeletesTagFromProjectEventCopyWith<$R,
            ClientDeletesTagFromProjectEvent, $Out> {
  _ClientDeletesTagFromProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientDeletesTagFromProjectEvent> $mapper =
      ClientDeletesTagFromProjectEventMapper.ensureInitialized();
  @override
  $R call(
          {String? projectId,
          String? typeId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (typeId != null) #typeId: typeId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientDeletesTagFromProjectEvent $make(CopyWithData data) =>
      ClientDeletesTagFromProjectEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          typeId: data.get(#typeId, or: $value.typeId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ClientDeletesTagFromProjectEventCopyWith<$R2,
      ClientDeletesTagFromProjectEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientDeletesTagFromProjectEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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

class ServerSendsAllProjectsWithTagsEventMapper
    extends SubClassMapperBase<ServerSendsAllProjectsWithTagsEvent> {
  ServerSendsAllProjectsWithTagsEventMapper._();

  static ServerSendsAllProjectsWithTagsEventMapper? _instance;
  static ServerSendsAllProjectsWithTagsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllProjectsWithTagsEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ProjectItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllProjectsWithTagsEvent';

  static List<ProjectItemModel> _$projectsWithTags(
          ServerSendsAllProjectsWithTagsEvent v) =>
      v.projectsWithTags;
  static const Field<ServerSendsAllProjectsWithTagsEvent,
          List<ProjectItemModel>> _f$projectsWithTags =
      Field('projectsWithTags', _$projectsWithTags);
  static String _$eventType(ServerSendsAllProjectsWithTagsEvent v) =>
      v.eventType;
  static const Field<ServerSendsAllProjectsWithTagsEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsAllProjectsWithTagsEvent v) =>
      v.requestId;
  static const Field<ServerSendsAllProjectsWithTagsEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsAllProjectsWithTagsEvent> fields = const {
    #projectsWithTags: _f$projectsWithTags,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsAllProjectsWithTagsEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsAllProjectsWithTagsEvent _instantiate(DecodingData data) {
    return ServerSendsAllProjectsWithTagsEvent(
        projectsWithTags: data.dec(_f$projectsWithTags),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllProjectsWithTagsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ServerSendsAllProjectsWithTagsEvent>(map);
  }

  static ServerSendsAllProjectsWithTagsEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsAllProjectsWithTagsEvent>(json);
  }
}

mixin ServerSendsAllProjectsWithTagsEventMappable {
  String toJson() {
    return ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized()
        .encodeJson<ServerSendsAllProjectsWithTagsEvent>(
            this as ServerSendsAllProjectsWithTagsEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized()
        .encodeMap<ServerSendsAllProjectsWithTagsEvent>(
            this as ServerSendsAllProjectsWithTagsEvent);
  }

  ServerSendsAllProjectsWithTagsEventCopyWith<
          ServerSendsAllProjectsWithTagsEvent,
          ServerSendsAllProjectsWithTagsEvent,
          ServerSendsAllProjectsWithTagsEvent>
      get copyWith => _ServerSendsAllProjectsWithTagsEventCopyWithImpl<
              ServerSendsAllProjectsWithTagsEvent,
              ServerSendsAllProjectsWithTagsEvent>(
          this as ServerSendsAllProjectsWithTagsEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllProjectsWithTagsEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllProjectsWithTagsEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllProjectsWithTagsEvent);
  }
}

extension ServerSendsAllProjectsWithTagsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllProjectsWithTagsEvent, $Out> {
  ServerSendsAllProjectsWithTagsEventCopyWith<$R,
          ServerSendsAllProjectsWithTagsEvent, $Out>
      get $asServerSendsAllProjectsWithTagsEvent => $base.as((v, t, t2) =>
          _ServerSendsAllProjectsWithTagsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsAllProjectsWithTagsEventCopyWith<
    $R,
    $In extends ServerSendsAllProjectsWithTagsEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ProjectItemModel,
          ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>>
      get projectsWithTags;
  @override
  $R call(
      {List<ProjectItemModel>? projectsWithTags,
      String? eventType,
      String? requestId});
  ServerSendsAllProjectsWithTagsEventCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerSendsAllProjectsWithTagsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllProjectsWithTagsEvent, $Out>
    implements
        ServerSendsAllProjectsWithTagsEventCopyWith<$R,
            ServerSendsAllProjectsWithTagsEvent, $Out> {
  _ServerSendsAllProjectsWithTagsEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllProjectsWithTagsEvent> $mapper =
      ServerSendsAllProjectsWithTagsEventMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ProjectItemModel,
          ProjectItemModelCopyWith<$R, ProjectItemModel, ProjectItemModel>>
      get projectsWithTags => ListCopyWith($value.projectsWithTags,
          (v, t) => v.copyWith.$chain(t), (v) => call(projectsWithTags: v));
  @override
  $R call(
          {List<ProjectItemModel>? projectsWithTags,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectsWithTags != null) #projectsWithTags: projectsWithTags,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsAllProjectsWithTagsEvent $make(CopyWithData data) =>
      ServerSendsAllProjectsWithTagsEvent(
          projectsWithTags:
              data.get(#projectsWithTags, or: $value.projectsWithTags),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsAllProjectsWithTagsEventCopyWith<$R2,
      ServerSendsAllProjectsWithTagsEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsAllProjectsWithTagsEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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

class ServerSendsCreatedProjectTagEventMapper
    extends SubClassMapperBase<ServerSendsCreatedProjectTagEvent> {
  ServerSendsCreatedProjectTagEventMapper._();

  static ServerSendsCreatedProjectTagEventMapper? _instance;
  static ServerSendsCreatedProjectTagEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsCreatedProjectTagEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      TagDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsCreatedProjectTagEvent';

  static String _$projectId(ServerSendsCreatedProjectTagEvent v) => v.projectId;
  static const Field<ServerSendsCreatedProjectTagEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static TagDto _$tag(ServerSendsCreatedProjectTagEvent v) => v.tag;
  static const Field<ServerSendsCreatedProjectTagEvent, TagDto> _f$tag =
      Field('tag', _$tag);
  static String _$eventType(ServerSendsCreatedProjectTagEvent v) => v.eventType;
  static const Field<ServerSendsCreatedProjectTagEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerSendsCreatedProjectTagEvent v) => v.requestId;
  static const Field<ServerSendsCreatedProjectTagEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerSendsCreatedProjectTagEvent> fields = const {
    #projectId: _f$projectId,
    #tag: _f$tag,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerSendsCreatedProjectTagEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerSendsCreatedProjectTagEvent _instantiate(DecodingData data) {
    return ServerSendsCreatedProjectTagEvent(
        projectId: data.dec(_f$projectId),
        tag: data.dec(_f$tag),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsCreatedProjectTagEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ServerSendsCreatedProjectTagEvent>(map);
  }

  static ServerSendsCreatedProjectTagEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsCreatedProjectTagEvent>(json);
  }
}

mixin ServerSendsCreatedProjectTagEventMappable {
  String toJson() {
    return ServerSendsCreatedProjectTagEventMapper.ensureInitialized()
        .encodeJson<ServerSendsCreatedProjectTagEvent>(
            this as ServerSendsCreatedProjectTagEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsCreatedProjectTagEventMapper.ensureInitialized()
        .encodeMap<ServerSendsCreatedProjectTagEvent>(
            this as ServerSendsCreatedProjectTagEvent);
  }

  ServerSendsCreatedProjectTagEventCopyWith<ServerSendsCreatedProjectTagEvent,
          ServerSendsCreatedProjectTagEvent, ServerSendsCreatedProjectTagEvent>
      get copyWith => _ServerSendsCreatedProjectTagEventCopyWithImpl<
              ServerSendsCreatedProjectTagEvent,
              ServerSendsCreatedProjectTagEvent>(
          this as ServerSendsCreatedProjectTagEvent, $identity, $identity);
  @override
  String toString() {
    return ServerSendsCreatedProjectTagEventMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsCreatedProjectTagEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsCreatedProjectTagEventMapper.ensureInitialized()
        .equalsValue(this as ServerSendsCreatedProjectTagEvent, other);
  }

  @override
  int get hashCode {
    return ServerSendsCreatedProjectTagEventMapper.ensureInitialized()
        .hashValue(this as ServerSendsCreatedProjectTagEvent);
  }
}

extension ServerSendsCreatedProjectTagEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsCreatedProjectTagEvent, $Out> {
  ServerSendsCreatedProjectTagEventCopyWith<$R,
          ServerSendsCreatedProjectTagEvent, $Out>
      get $asServerSendsCreatedProjectTagEvent => $base.as((v, t, t2) =>
          _ServerSendsCreatedProjectTagEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerSendsCreatedProjectTagEventCopyWith<
    $R,
    $In extends ServerSendsCreatedProjectTagEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  TagDtoCopyWith<$R, TagDto, TagDto> get tag;
  @override
  $R call(
      {String? projectId, TagDto? tag, String? eventType, String? requestId});
  ServerSendsCreatedProjectTagEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsCreatedProjectTagEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsCreatedProjectTagEvent, $Out>
    implements
        ServerSendsCreatedProjectTagEventCopyWith<$R,
            ServerSendsCreatedProjectTagEvent, $Out> {
  _ServerSendsCreatedProjectTagEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsCreatedProjectTagEvent> $mapper =
      ServerSendsCreatedProjectTagEventMapper.ensureInitialized();
  @override
  TagDtoCopyWith<$R, TagDto, TagDto> get tag =>
      $value.tag.copyWith.$chain((v) => call(tag: v));
  @override
  $R call(
          {String? projectId,
          TagDto? tag,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (tag != null) #tag: tag,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerSendsCreatedProjectTagEvent $make(CopyWithData data) =>
      ServerSendsCreatedProjectTagEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          tag: data.get(#tag, or: $value.tag),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerSendsCreatedProjectTagEventCopyWith<$R2,
      ServerSendsCreatedProjectTagEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsCreatedProjectTagEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
}

class ServerDeletedTagFromProjectEventMapper
    extends SubClassMapperBase<ServerDeletedTagFromProjectEvent> {
  ServerDeletedTagFromProjectEventMapper._();

  static ServerDeletedTagFromProjectEventMapper? _instance;
  static ServerDeletedTagFromProjectEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerDeletedTagFromProjectEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerDeletedTagFromProjectEvent';

  static String _$projectId(ServerDeletedTagFromProjectEvent v) => v.projectId;
  static const Field<ServerDeletedTagFromProjectEvent, String> _f$projectId =
      Field('projectId', _$projectId);
  static String _$tagId(ServerDeletedTagFromProjectEvent v) => v.tagId;
  static const Field<ServerDeletedTagFromProjectEvent, String> _f$tagId =
      Field('tagId', _$tagId);
  static String _$eventType(ServerDeletedTagFromProjectEvent v) => v.eventType;
  static const Field<ServerDeletedTagFromProjectEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ServerDeletedTagFromProjectEvent v) => v.requestId;
  static const Field<ServerDeletedTagFromProjectEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ServerDeletedTagFromProjectEvent> fields = const {
    #projectId: _f$projectId,
    #tagId: _f$tagId,
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = ServerDeletedTagFromProjectEvent.name;
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerDeletedTagFromProjectEvent _instantiate(DecodingData data) {
    return ServerDeletedTagFromProjectEvent(
        projectId: data.dec(_f$projectId),
        tagId: data.dec(_f$tagId),
        eventType: data.dec(_f$eventType),
        requestId: data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerDeletedTagFromProjectEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerDeletedTagFromProjectEvent>(map);
  }

  static ServerDeletedTagFromProjectEvent fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerDeletedTagFromProjectEvent>(json);
  }
}

mixin ServerDeletedTagFromProjectEventMappable {
  String toJson() {
    return ServerDeletedTagFromProjectEventMapper.ensureInitialized()
        .encodeJson<ServerDeletedTagFromProjectEvent>(
            this as ServerDeletedTagFromProjectEvent);
  }

  Map<String, dynamic> toMap() {
    return ServerDeletedTagFromProjectEventMapper.ensureInitialized()
        .encodeMap<ServerDeletedTagFromProjectEvent>(
            this as ServerDeletedTagFromProjectEvent);
  }

  ServerDeletedTagFromProjectEventCopyWith<ServerDeletedTagFromProjectEvent,
          ServerDeletedTagFromProjectEvent, ServerDeletedTagFromProjectEvent>
      get copyWith => _ServerDeletedTagFromProjectEventCopyWithImpl<
              ServerDeletedTagFromProjectEvent,
              ServerDeletedTagFromProjectEvent>(
          this as ServerDeletedTagFromProjectEvent, $identity, $identity);
  @override
  String toString() {
    return ServerDeletedTagFromProjectEventMapper.ensureInitialized()
        .stringifyValue(this as ServerDeletedTagFromProjectEvent);
  }

  @override
  bool operator ==(Object other) {
    return ServerDeletedTagFromProjectEventMapper.ensureInitialized()
        .equalsValue(this as ServerDeletedTagFromProjectEvent, other);
  }

  @override
  int get hashCode {
    return ServerDeletedTagFromProjectEventMapper.ensureInitialized()
        .hashValue(this as ServerDeletedTagFromProjectEvent);
  }
}

extension ServerDeletedTagFromProjectEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerDeletedTagFromProjectEvent, $Out> {
  ServerDeletedTagFromProjectEventCopyWith<$R, ServerDeletedTagFromProjectEvent,
          $Out>
      get $asServerDeletedTagFromProjectEvent => $base.as((v, t, t2) =>
          _ServerDeletedTagFromProjectEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerDeletedTagFromProjectEventCopyWith<
    $R,
    $In extends ServerDeletedTagFromProjectEvent,
    $Out> implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? projectId, String? tagId, String? eventType, String? requestId});
  ServerDeletedTagFromProjectEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerDeletedTagFromProjectEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerDeletedTagFromProjectEvent, $Out>
    implements
        ServerDeletedTagFromProjectEventCopyWith<$R,
            ServerDeletedTagFromProjectEvent, $Out> {
  _ServerDeletedTagFromProjectEventCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerDeletedTagFromProjectEvent> $mapper =
      ServerDeletedTagFromProjectEventMapper.ensureInitialized();
  @override
  $R call(
          {String? projectId,
          String? tagId,
          String? eventType,
          String? requestId}) =>
      $apply(FieldCopyWithData({
        if (projectId != null) #projectId: projectId,
        if (tagId != null) #tagId: tagId,
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ServerDeletedTagFromProjectEvent $make(CopyWithData data) =>
      ServerDeletedTagFromProjectEvent(
          projectId: data.get(#projectId, or: $value.projectId),
          tagId: data.get(#tagId, or: $value.tagId),
          eventType: data.get(#eventType, or: $value.eventType),
          requestId: data.get(#requestId, or: $value.requestId));

  @override
  ServerDeletedTagFromProjectEventCopyWith<$R2,
      ServerDeletedTagFromProjectEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerDeletedTagFromProjectEventCopyWithImpl<$R2, $Out2>(
          $value, $cast, t);
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
