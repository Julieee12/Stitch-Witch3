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
      ClientGetsAllProjectsEventMapper.ensureInitialized();
      ClientGetsAllItemsEventMapper.ensureInitialized();
      ClientCreatesNewItemEventMapper.ensureInitialized();
      ClientUpdatesItemEventMapper.ensureInitialized();
      ClientDeletesItemEventMapper.ensureInitialized();
      ServerSendsAllProjectsEventMapper.ensureInitialized();
      ServerSendsAllItemsEventMapper.ensureInitialized();
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
      InventoryItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientUpdatesItemEvent';

  static InventoryItemModel _$item(ClientUpdatesItemEvent v) => v.item;
  static const Field<ClientUpdatesItemEvent, InventoryItemModel> _f$item =
      Field('item', _$item);
  static String _$eventType(ClientUpdatesItemEvent v) => v.eventType;
  static const Field<ClientUpdatesItemEvent, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientUpdatesItemEvent v) => v.requestId;
  static const Field<ClientUpdatesItemEvent, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientUpdatesItemEvent> fields = const {
    #item: _f$item,
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
        item: data.dec(_f$item),
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
  InventoryItemModelCopyWith<$R, InventoryItemModel, InventoryItemModel>
      get item;
  @override
  $R call({InventoryItemModel? item, String? eventType, String? requestId});
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
  ClientUpdatesItemEvent $make(CopyWithData data) => ClientUpdatesItemEvent(
      item: data.get(#item, or: $value.item),
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
