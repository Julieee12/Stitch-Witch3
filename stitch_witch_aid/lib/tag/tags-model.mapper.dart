// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tags-model.dart';

class TagDtoMapper extends ClassMapperBase<TagType> {
  TagDtoMapper._();

  static TagDtoMapper? _instance;
  static TagDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagDto';

  static String _$tagTypeId(TagType v) => v.tagTypeId;
  static const Field<TagType, String> _f$tagTypeId =
      Field('tagTypeId', _$tagTypeId);
  static String _$typeName(TagType v) => v.typeName;
  static const Field<TagType, String> _f$typeName =
      Field('typeName', _$typeName);

  @override
  final MappableFields<TagType> fields = const {
    #tagTypeId: _f$tagTypeId,
    #typeName: _f$typeName,
  };

  static TagType _instantiate(DecodingData data) {
    return TagType(
        tagTypeId: data.dec(_f$tagTypeId), typeName: data.dec(_f$typeName));
  }

  @override
  final Function instantiate = _instantiate;

  static TagType fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagType>(map);
  }

  static TagType fromJson(String json) {
    return ensureInitialized().decodeJson<TagType>(json);
  }
}

mixin TagDtoMappable {
  String toJson() {
    return TagDtoMapper.ensureInitialized().encodeJson<TagType>(this as TagType);
  }

  Map<String, dynamic> toMap() {
    return TagDtoMapper.ensureInitialized().encodeMap<TagType>(this as TagType);
  }

  TagDtoCopyWith<TagType, TagType, TagType> get copyWith =>
      _TagDtoCopyWithImpl<TagType, TagType>(this as TagType, $identity, $identity);
  @override
  String toString() {
    return TagDtoMapper.ensureInitialized().stringifyValue(this as TagType);
  }

  @override
  bool operator ==(Object other) {
    return TagDtoMapper.ensureInitialized().equalsValue(this as TagType, other);
  }

  @override
  int get hashCode {
    return TagDtoMapper.ensureInitialized().hashValue(this as TagType);
  }
}

extension TagDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, TagType, $Out> {
  TagDtoCopyWith<$R, TagType, $Out> get $asTagDto =>
      $base.as((v, t, t2) => _TagDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagDtoCopyWith<$R, $In extends TagType, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? tagTypeId, String? typeName});
  TagDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagDtoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, TagType, $Out>
    implements TagDtoCopyWith<$R, TagType, $Out> {
  _TagDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagType> $mapper = TagDtoMapper.ensureInitialized();
  @override
  $R call({String? tagTypeId, String? typeName}) => $apply(FieldCopyWithData({
        if (tagTypeId != null) #tagTypeId: tagTypeId,
        if (typeName != null) #typeName: typeName
      }));
  @override
  TagType $make(CopyWithData data) => TagType(
      tagTypeId: data.get(#tagTypeId, or: $value.tagTypeId),
      typeName: data.get(#typeName, or: $value.typeName));

  @override
  TagDtoCopyWith<$R2, TagType, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
