// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tags-model.dart';

class TagDtoMapper extends ClassMapperBase<TagDto> {
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

  static String _$tagTypeId(TagDto v) => v.tagTypeId;
  static const Field<TagDto, String> _f$tagTypeId =
      Field('tagTypeId', _$tagTypeId);
  static String _$typename(TagDto v) => v.typename;
  static const Field<TagDto, String> _f$typename =
      Field('typename', _$typename);

  @override
  final MappableFields<TagDto> fields = const {
    #tagTypeId: _f$tagTypeId,
    #typename: _f$typename,
  };

  static TagDto _instantiate(DecodingData data) {
    return TagDto(
        tagTypeId: data.dec(_f$tagTypeId), typename: data.dec(_f$typename));
  }

  @override
  final Function instantiate = _instantiate;

  static TagDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagDto>(map);
  }

  static TagDto fromJson(String json) {
    return ensureInitialized().decodeJson<TagDto>(json);
  }
}

mixin TagDtoMappable {
  String toJson() {
    return TagDtoMapper.ensureInitialized().encodeJson<TagDto>(this as TagDto);
  }

  Map<String, dynamic> toMap() {
    return TagDtoMapper.ensureInitialized().encodeMap<TagDto>(this as TagDto);
  }

  TagDtoCopyWith<TagDto, TagDto, TagDto> get copyWith =>
      _TagDtoCopyWithImpl<TagDto, TagDto>(this as TagDto, $identity, $identity);
  @override
  String toString() {
    return TagDtoMapper.ensureInitialized().stringifyValue(this as TagDto);
  }

  @override
  bool operator ==(Object other) {
    return TagDtoMapper.ensureInitialized().equalsValue(this as TagDto, other);
  }

  @override
  int get hashCode {
    return TagDtoMapper.ensureInitialized().hashValue(this as TagDto);
  }
}

extension TagDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, TagDto, $Out> {
  TagDtoCopyWith<$R, TagDto, $Out> get $asTagDto =>
      $base.as((v, t, t2) => _TagDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagDtoCopyWith<$R, $In extends TagDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? tagTypeId, String? typename});
  TagDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagDtoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, TagDto, $Out>
    implements TagDtoCopyWith<$R, TagDto, $Out> {
  _TagDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagDto> $mapper = TagDtoMapper.ensureInitialized();
  @override
  $R call({String? tagTypeId, String? typename}) => $apply(FieldCopyWithData({
        if (tagTypeId != null) #tagTypeId: tagTypeId,
        if (typename != null) #typename: typename
      }));
  @override
  TagDto $make(CopyWithData data) => TagDto(
      tagTypeId: data.get(#tagTypeId, or: $value.tagTypeId),
      typename: data.get(#typename, or: $value.typename));

  @override
  TagDtoCopyWith<$R2, TagDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
