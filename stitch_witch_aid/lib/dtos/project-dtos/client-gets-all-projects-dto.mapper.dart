// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'client-gets-all-projects-dto.dart';

class ClientGetsAllProjectsDtoMapper
    extends ClassMapperBase<ClientGetsAllProjectsDto> {
  ClientGetsAllProjectsDtoMapper._();

  static ClientGetsAllProjectsDtoMapper? _instance;
  static ClientGetsAllProjectsDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientGetsAllProjectsDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ClientGetsAllProjectsDto';

  static String _$eventType(ClientGetsAllProjectsDto v) => v.eventType;
  static const Field<ClientGetsAllProjectsDto, String> _f$eventType =
      Field('eventType', _$eventType);
  static String _$requestId(ClientGetsAllProjectsDto v) => v.requestId;
  static const Field<ClientGetsAllProjectsDto, String> _f$requestId =
      Field('requestId', _$requestId);

  @override
  final MappableFields<ClientGetsAllProjectsDto> fields = const {
    #eventType: _f$eventType,
    #requestId: _f$requestId,
  };

  static ClientGetsAllProjectsDto _instantiate(DecodingData data) {
    return ClientGetsAllProjectsDto(
        data.dec(_f$eventType), data.dec(_f$requestId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientGetsAllProjectsDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientGetsAllProjectsDto>(map);
  }

  static ClientGetsAllProjectsDto fromJson(String json) {
    return ensureInitialized().decodeJson<ClientGetsAllProjectsDto>(json);
  }
}

mixin ClientGetsAllProjectsDtoMappable {
  String toJson() {
    return ClientGetsAllProjectsDtoMapper.ensureInitialized()
        .encodeJson<ClientGetsAllProjectsDto>(this as ClientGetsAllProjectsDto);
  }

  Map<String, dynamic> toMap() {
    return ClientGetsAllProjectsDtoMapper.ensureInitialized()
        .encodeMap<ClientGetsAllProjectsDto>(this as ClientGetsAllProjectsDto);
  }

  ClientGetsAllProjectsDtoCopyWith<ClientGetsAllProjectsDto,
          ClientGetsAllProjectsDto, ClientGetsAllProjectsDto>
      get copyWith => _ClientGetsAllProjectsDtoCopyWithImpl<
              ClientGetsAllProjectsDto, ClientGetsAllProjectsDto>(
          this as ClientGetsAllProjectsDto, $identity, $identity);
  @override
  String toString() {
    return ClientGetsAllProjectsDtoMapper.ensureInitialized()
        .stringifyValue(this as ClientGetsAllProjectsDto);
  }

  @override
  bool operator ==(Object other) {
    return ClientGetsAllProjectsDtoMapper.ensureInitialized()
        .equalsValue(this as ClientGetsAllProjectsDto, other);
  }

  @override
  int get hashCode {
    return ClientGetsAllProjectsDtoMapper.ensureInitialized()
        .hashValue(this as ClientGetsAllProjectsDto);
  }
}

extension ClientGetsAllProjectsDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientGetsAllProjectsDto, $Out> {
  ClientGetsAllProjectsDtoCopyWith<$R, ClientGetsAllProjectsDto, $Out>
      get $asClientGetsAllProjectsDto => $base.as((v, t, t2) =>
          _ClientGetsAllProjectsDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientGetsAllProjectsDtoCopyWith<
    $R,
    $In extends ClientGetsAllProjectsDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? eventType, String? requestId});
  ClientGetsAllProjectsDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientGetsAllProjectsDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientGetsAllProjectsDto, $Out>
    implements
        ClientGetsAllProjectsDtoCopyWith<$R, ClientGetsAllProjectsDto, $Out> {
  _ClientGetsAllProjectsDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientGetsAllProjectsDto> $mapper =
      ClientGetsAllProjectsDtoMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? requestId}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (requestId != null) #requestId: requestId
      }));
  @override
  ClientGetsAllProjectsDto $make(CopyWithData data) => ClientGetsAllProjectsDto(
      data.get(#eventType, or: $value.eventType),
      data.get(#requestId, or: $value.requestId));

  @override
  ClientGetsAllProjectsDtoCopyWith<$R2, ClientGetsAllProjectsDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientGetsAllProjectsDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
