// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'coordinates-model.dart';

class CoordinatesModelMapper extends ClassMapperBase<CoordinatesModel> {
  CoordinatesModelMapper._();

  static CoordinatesModelMapper? _instance;
  static CoordinatesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CoordinatesModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CoordinatesModel';

  static int _$x(CoordinatesModel v) => v.x;
  static const Field<CoordinatesModel, int> _f$x = Field('x', _$x);
  static int _$y(CoordinatesModel v) => v.y;
  static const Field<CoordinatesModel, int> _f$y = Field('y', _$y);
  static int _$z(CoordinatesModel v) => v.z;
  static const Field<CoordinatesModel, int> _f$z = Field('z', _$z);

  @override
  final MappableFields<CoordinatesModel> fields = const {
    #x: _f$x,
    #y: _f$y,
    #z: _f$z,
  };

  static CoordinatesModel _instantiate(DecodingData data) {
    return CoordinatesModel(
        x: data.dec(_f$x), y: data.dec(_f$y), z: data.dec(_f$z));
  }

  @override
  final Function instantiate = _instantiate;

  static CoordinatesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CoordinatesModel>(map);
  }

  static CoordinatesModel fromJson(String json) {
    return ensureInitialized().decodeJson<CoordinatesModel>(json);
  }
}

mixin CoordinatesModelMappable {
  String toJson() {
    return CoordinatesModelMapper.ensureInitialized()
        .encodeJson<CoordinatesModel>(this as CoordinatesModel);
  }

  Map<String, dynamic> toMap() {
    return CoordinatesModelMapper.ensureInitialized()
        .encodeMap<CoordinatesModel>(this as CoordinatesModel);
  }

  CoordinatesModelCopyWith<CoordinatesModel, CoordinatesModel, CoordinatesModel>
      get copyWith =>
          _CoordinatesModelCopyWithImpl<CoordinatesModel, CoordinatesModel>(
              this as CoordinatesModel, $identity, $identity);
  @override
  String toString() {
    return CoordinatesModelMapper.ensureInitialized()
        .stringifyValue(this as CoordinatesModel);
  }

  @override
  bool operator ==(Object other) {
    return CoordinatesModelMapper.ensureInitialized()
        .equalsValue(this as CoordinatesModel, other);
  }

  @override
  int get hashCode {
    return CoordinatesModelMapper.ensureInitialized()
        .hashValue(this as CoordinatesModel);
  }
}

extension CoordinatesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CoordinatesModel, $Out> {
  CoordinatesModelCopyWith<$R, CoordinatesModel, $Out>
      get $asCoordinatesModel => $base
          .as((v, t, t2) => _CoordinatesModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CoordinatesModelCopyWith<$R, $In extends CoordinatesModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? x, int? y, int? z});
  CoordinatesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CoordinatesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CoordinatesModel, $Out>
    implements CoordinatesModelCopyWith<$R, CoordinatesModel, $Out> {
  _CoordinatesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CoordinatesModel> $mapper =
      CoordinatesModelMapper.ensureInitialized();
  @override
  $R call({int? x, int? y, int? z}) => $apply(FieldCopyWithData(
      {if (x != null) #x: x, if (y != null) #y: y, if (z != null) #z: z}));
  @override
  CoordinatesModel $make(CopyWithData data) => CoordinatesModel(
      x: data.get(#x, or: $value.x),
      y: data.get(#y, or: $value.y),
      z: data.get(#z, or: $value.z));

  @override
  CoordinatesModelCopyWith<$R2, CoordinatesModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CoordinatesModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
