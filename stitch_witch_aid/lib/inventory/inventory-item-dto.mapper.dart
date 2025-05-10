// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'inventory-item-dto.dart';

class InventoryItemDtoMapper extends ClassMapperBase<InventoryItemDto> {
  InventoryItemDtoMapper._();

  static InventoryItemDtoMapper? _instance;
  static InventoryItemDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InventoryItemDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InventoryItemDto';

  static String _$name(InventoryItemDto v) => v.name;
  static const Field<InventoryItemDto, String> _f$name = Field('name', _$name);
  static String? _$description(InventoryItemDto v) => v.description;
  static const Field<InventoryItemDto, String> _f$description =
      Field('description', _$description);
  static String? _$tag(InventoryItemDto v) => v.tag;
  static const Field<InventoryItemDto, String> _f$tag = Field('tag', _$tag);
  static String? _$picurl(InventoryItemDto v) => v.picurl;
  static const Field<InventoryItemDto, String> _f$picurl =
      Field('picurl', _$picurl);

  @override
  final MappableFields<InventoryItemDto> fields = const {
    #name: _f$name,
    #description: _f$description,
    #tag: _f$tag,
    #picurl: _f$picurl,
  };

  static InventoryItemDto _instantiate(DecodingData data) {
    return InventoryItemDto(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        tag: data.dec(_f$tag),
        picurl: data.dec(_f$picurl));
  }

  @override
  final Function instantiate = _instantiate;

  static InventoryItemDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InventoryItemDto>(map);
  }

  static InventoryItemDto fromJson(String json) {
    return ensureInitialized().decodeJson<InventoryItemDto>(json);
  }
}

mixin InventoryItemDtoMappable {
  String toJson() {
    return InventoryItemDtoMapper.ensureInitialized()
        .encodeJson<InventoryItemDto>(this as InventoryItemDto);
  }

  Map<String, dynamic> toMap() {
    return InventoryItemDtoMapper.ensureInitialized()
        .encodeMap<InventoryItemDto>(this as InventoryItemDto);
  }

  InventoryItemDtoCopyWith<InventoryItemDto, InventoryItemDto, InventoryItemDto>
      get copyWith =>
          _InventoryItemDtoCopyWithImpl<InventoryItemDto, InventoryItemDto>(
              this as InventoryItemDto, $identity, $identity);
  @override
  String toString() {
    return InventoryItemDtoMapper.ensureInitialized()
        .stringifyValue(this as InventoryItemDto);
  }

  @override
  bool operator ==(Object other) {
    return InventoryItemDtoMapper.ensureInitialized()
        .equalsValue(this as InventoryItemDto, other);
  }

  @override
  int get hashCode {
    return InventoryItemDtoMapper.ensureInitialized()
        .hashValue(this as InventoryItemDto);
  }
}

extension InventoryItemDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InventoryItemDto, $Out> {
  InventoryItemDtoCopyWith<$R, InventoryItemDto, $Out>
      get $asInventoryItemDto => $base
          .as((v, t, t2) => _InventoryItemDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InventoryItemDtoCopyWith<$R, $In extends InventoryItemDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? description, String? tag, String? picurl});
  InventoryItemDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InventoryItemDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InventoryItemDto, $Out>
    implements InventoryItemDtoCopyWith<$R, InventoryItemDto, $Out> {
  _InventoryItemDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InventoryItemDto> $mapper =
      InventoryItemDtoMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          Object? description = $none,
          Object? tag = $none,
          Object? picurl = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (tag != $none) #tag: tag,
        if (picurl != $none) #picurl: picurl
      }));
  @override
  InventoryItemDto $make(CopyWithData data) => InventoryItemDto(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      tag: data.get(#tag, or: $value.tag),
      picurl: data.get(#picurl, or: $value.picurl));

  @override
  InventoryItemDtoCopyWith<$R2, InventoryItemDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InventoryItemDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
