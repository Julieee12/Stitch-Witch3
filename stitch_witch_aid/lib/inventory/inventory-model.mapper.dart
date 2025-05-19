// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'inventory-model.dart';

class InventoryItemModelMapper extends ClassMapperBase<InventoryItemModel> {
  InventoryItemModelMapper._();

  static InventoryItemModelMapper? _instance;
  static InventoryItemModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InventoryItemModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InventoryItemModel';

  static String _$id(InventoryItemModel v) => v.id;
  static const Field<InventoryItemModel, String> _f$id = Field('id', _$id);
  static String _$name(InventoryItemModel v) => v.name;
  static const Field<InventoryItemModel, String> _f$name =
      Field('name', _$name);
  static String? _$description(InventoryItemModel v) => v.description;
  static const Field<InventoryItemModel, String> _f$description =
      Field('description', _$description);
  static String? _$picurl(InventoryItemModel v) => v.picurl;
  static const Field<InventoryItemModel, String> _f$picurl =
      Field('picurl', _$picurl);

  @override
  final MappableFields<InventoryItemModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #picurl: _f$picurl,
  };

  static InventoryItemModel _instantiate(DecodingData data) {
    return InventoryItemModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        picurl: data.dec(_f$picurl));
  }

  @override
  final Function instantiate = _instantiate;

  static InventoryItemModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InventoryItemModel>(map);
  }

  static InventoryItemModel fromJson(String json) {
    return ensureInitialized().decodeJson<InventoryItemModel>(json);
  }
}

mixin InventoryItemModelMappable {
  String toJson() {
    return InventoryItemModelMapper.ensureInitialized()
        .encodeJson<InventoryItemModel>(this as InventoryItemModel);
  }

  Map<String, dynamic> toMap() {
    return InventoryItemModelMapper.ensureInitialized()
        .encodeMap<InventoryItemModel>(this as InventoryItemModel);
  }

  InventoryItemModelCopyWith<InventoryItemModel, InventoryItemModel,
          InventoryItemModel>
      get copyWith => _InventoryItemModelCopyWithImpl<InventoryItemModel,
          InventoryItemModel>(this as InventoryItemModel, $identity, $identity);
  @override
  String toString() {
    return InventoryItemModelMapper.ensureInitialized()
        .stringifyValue(this as InventoryItemModel);
  }

  @override
  bool operator ==(Object other) {
    return InventoryItemModelMapper.ensureInitialized()
        .equalsValue(this as InventoryItemModel, other);
  }

  @override
  int get hashCode {
    return InventoryItemModelMapper.ensureInitialized()
        .hashValue(this as InventoryItemModel);
  }
}

extension InventoryItemModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InventoryItemModel, $Out> {
  InventoryItemModelCopyWith<$R, InventoryItemModel, $Out>
      get $asInventoryItemModel => $base.as(
          (v, t, t2) => _InventoryItemModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InventoryItemModelCopyWith<$R, $In extends InventoryItemModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? description, String? picurl});
  InventoryItemModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InventoryItemModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InventoryItemModel, $Out>
    implements InventoryItemModelCopyWith<$R, InventoryItemModel, $Out> {
  _InventoryItemModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InventoryItemModel> $mapper =
      InventoryItemModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          Object? description = $none,
          Object? picurl = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (picurl != $none) #picurl: picurl
      }));
  @override
  InventoryItemModel $make(CopyWithData data) => InventoryItemModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      picurl: data.get(#picurl, or: $value.picurl));

  @override
  InventoryItemModelCopyWith<$R2, InventoryItemModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InventoryItemModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpdateItemDtoMapper extends ClassMapperBase<UpdateItemDto> {
  UpdateItemDtoMapper._();

  static UpdateItemDtoMapper? _instance;
  static UpdateItemDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateItemDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateItemDto';

  static String _$id(UpdateItemDto v) => v.id;
  static const Field<UpdateItemDto, String> _f$id = Field('id', _$id);
  static String _$name(UpdateItemDto v) => v.name;
  static const Field<UpdateItemDto, String> _f$name = Field('name', _$name);
  static String? _$description(UpdateItemDto v) => v.description;
  static const Field<UpdateItemDto, String> _f$description =
      Field('description', _$description);
  static String? _$picurl(UpdateItemDto v) => v.picurl;
  static const Field<UpdateItemDto, String> _f$picurl =
      Field('picurl', _$picurl);

  @override
  final MappableFields<UpdateItemDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #picurl: _f$picurl,
  };

  static UpdateItemDto _instantiate(DecodingData data) {
    return UpdateItemDto(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        picurl: data.dec(_f$picurl));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateItemDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateItemDto>(map);
  }

  static UpdateItemDto fromJson(String json) {
    return ensureInitialized().decodeJson<UpdateItemDto>(json);
  }
}

mixin UpdateItemDtoMappable {
  String toJson() {
    return UpdateItemDtoMapper.ensureInitialized()
        .encodeJson<UpdateItemDto>(this as UpdateItemDto);
  }

  Map<String, dynamic> toMap() {
    return UpdateItemDtoMapper.ensureInitialized()
        .encodeMap<UpdateItemDto>(this as UpdateItemDto);
  }

  UpdateItemDtoCopyWith<UpdateItemDto, UpdateItemDto, UpdateItemDto>
      get copyWith => _UpdateItemDtoCopyWithImpl<UpdateItemDto, UpdateItemDto>(
          this as UpdateItemDto, $identity, $identity);
  @override
  String toString() {
    return UpdateItemDtoMapper.ensureInitialized()
        .stringifyValue(this as UpdateItemDto);
  }

  @override
  bool operator ==(Object other) {
    return UpdateItemDtoMapper.ensureInitialized()
        .equalsValue(this as UpdateItemDto, other);
  }

  @override
  int get hashCode {
    return UpdateItemDtoMapper.ensureInitialized()
        .hashValue(this as UpdateItemDto);
  }
}

extension UpdateItemDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateItemDto, $Out> {
  UpdateItemDtoCopyWith<$R, UpdateItemDto, $Out> get $asUpdateItemDto =>
      $base.as((v, t, t2) => _UpdateItemDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdateItemDtoCopyWith<$R, $In extends UpdateItemDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? description, String? picurl});
  UpdateItemDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpdateItemDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateItemDto, $Out>
    implements UpdateItemDtoCopyWith<$R, UpdateItemDto, $Out> {
  _UpdateItemDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateItemDto> $mapper =
      UpdateItemDtoMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          Object? description = $none,
          Object? picurl = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (picurl != $none) #picurl: picurl
      }));
  @override
  UpdateItemDto $make(CopyWithData data) => UpdateItemDto(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      picurl: data.get(#picurl, or: $value.picurl));

  @override
  UpdateItemDtoCopyWith<$R2, UpdateItemDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdateItemDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
