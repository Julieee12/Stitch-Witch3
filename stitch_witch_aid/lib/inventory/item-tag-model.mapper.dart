// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item-tag-model.dart';

class ItemTagModelMapper extends ClassMapperBase<ItemTagModel> {
  ItemTagModelMapper._();

  static ItemTagModelMapper? _instance;
  static ItemTagModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemTagModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemTagModel';

  static String _$itemId(ItemTagModel v) => v.itemId;
  static const Field<ItemTagModel, String> _f$itemId =
      Field('itemId', _$itemId);
  static String _$tagId(ItemTagModel v) => v.tagId;
  static const Field<ItemTagModel, String> _f$tagId = Field('tagId', _$tagId);

  @override
  final MappableFields<ItemTagModel> fields = const {
    #itemId: _f$itemId,
    #tagId: _f$tagId,
  };

  static ItemTagModel _instantiate(DecodingData data) {
    return ItemTagModel(itemId: data.dec(_f$itemId), tagId: data.dec(_f$tagId));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemTagModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemTagModel>(map);
  }

  static ItemTagModel fromJson(String json) {
    return ensureInitialized().decodeJson<ItemTagModel>(json);
  }
}

mixin ItemTagModelMappable {
  String toJson() {
    return ItemTagModelMapper.ensureInitialized()
        .encodeJson<ItemTagModel>(this as ItemTagModel);
  }

  Map<String, dynamic> toMap() {
    return ItemTagModelMapper.ensureInitialized()
        .encodeMap<ItemTagModel>(this as ItemTagModel);
  }

  ItemTagModelCopyWith<ItemTagModel, ItemTagModel, ItemTagModel> get copyWith =>
      _ItemTagModelCopyWithImpl<ItemTagModel, ItemTagModel>(
          this as ItemTagModel, $identity, $identity);
  @override
  String toString() {
    return ItemTagModelMapper.ensureInitialized()
        .stringifyValue(this as ItemTagModel);
  }

  @override
  bool operator ==(Object other) {
    return ItemTagModelMapper.ensureInitialized()
        .equalsValue(this as ItemTagModel, other);
  }

  @override
  int get hashCode {
    return ItemTagModelMapper.ensureInitialized()
        .hashValue(this as ItemTagModel);
  }
}

extension ItemTagModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ItemTagModel, $Out> {
  ItemTagModelCopyWith<$R, ItemTagModel, $Out> get $asItemTagModel =>
      $base.as((v, t, t2) => _ItemTagModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemTagModelCopyWith<$R, $In extends ItemTagModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? itemId, String? tagId});
  ItemTagModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemTagModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemTagModel, $Out>
    implements ItemTagModelCopyWith<$R, ItemTagModel, $Out> {
  _ItemTagModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemTagModel> $mapper =
      ItemTagModelMapper.ensureInitialized();
  @override
  $R call({String? itemId, String? tagId}) => $apply(FieldCopyWithData(
      {if (itemId != null) #itemId: itemId, if (tagId != null) #tagId: tagId}));
  @override
  ItemTagModel $make(CopyWithData data) => ItemTagModel(
      itemId: data.get(#itemId, or: $value.itemId),
      tagId: data.get(#tagId, or: $value.tagId));

  @override
  ItemTagModelCopyWith<$R2, ItemTagModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ItemTagModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
