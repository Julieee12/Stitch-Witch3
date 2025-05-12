// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'projects-model.dart';

class ProjectItemModelMapper extends ClassMapperBase<ProjectItemModel> {
  ProjectItemModelMapper._();

  static ProjectItemModelMapper? _instance;
  static ProjectItemModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectItemModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectItemModel';

  static String _$id(ProjectItemModel v) => v.id;
  static const Field<ProjectItemModel, String> _f$id = Field('id', _$id);
  static String _$name(ProjectItemModel v) => v.name;
  static const Field<ProjectItemModel, String> _f$name = Field('name', _$name);
  static String? _$tag(ProjectItemModel v) => v.tag;
  static const Field<ProjectItemModel, String> _f$tag = Field('tag', _$tag);
  static int _$stitch(ProjectItemModel v) => v.stitch;
  static const Field<ProjectItemModel, int> _f$stitch =
      Field('stitch', _$stitch);
  static int _$row(ProjectItemModel v) => v.row;
  static const Field<ProjectItemModel, int> _f$row = Field('row', _$row);
  static String? _$picurl(ProjectItemModel v) => v.picurl;
  static const Field<ProjectItemModel, String> _f$picurl =
      Field('picurl', _$picurl);
  static String? _$description(ProjectItemModel v) => v.description;
  static const Field<ProjectItemModel, String> _f$description =
      Field('description', _$description);
  static String? _$yarn(ProjectItemModel v) => v.yarn;
  static const Field<ProjectItemModel, String> _f$yarn = Field('yarn', _$yarn);
  static String? _$hook(ProjectItemModel v) => v.hook;
  static const Field<ProjectItemModel, String> _f$hook = Field('hook', _$hook);
  static double? _$time(ProjectItemModel v) => v.time;
  static const Field<ProjectItemModel, double> _f$time = Field('time', _$time);

  @override
  final MappableFields<ProjectItemModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #tag: _f$tag,
    #stitch: _f$stitch,
    #row: _f$row,
    #picurl: _f$picurl,
    #description: _f$description,
    #yarn: _f$yarn,
    #hook: _f$hook,
    #time: _f$time,
  };

  static ProjectItemModel _instantiate(DecodingData data) {
    return ProjectItemModel(
        data.dec(_f$id),
        data.dec(_f$name),
        data.dec(_f$tag),
        data.dec(_f$stitch),
        data.dec(_f$row),
        data.dec(_f$picurl),
        data.dec(_f$description),
        data.dec(_f$yarn),
        data.dec(_f$hook),
        data.dec(_f$time));
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectItemModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectItemModel>(map);
  }

  static ProjectItemModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectItemModel>(json);
  }
}

mixin ProjectItemModelMappable {
  String toJson() {
    return ProjectItemModelMapper.ensureInitialized()
        .encodeJson<ProjectItemModel>(this as ProjectItemModel);
  }

  Map<String, dynamic> toMap() {
    return ProjectItemModelMapper.ensureInitialized()
        .encodeMap<ProjectItemModel>(this as ProjectItemModel);
  }

  ProjectItemModelCopyWith<ProjectItemModel, ProjectItemModel, ProjectItemModel>
      get copyWith =>
          _ProjectItemModelCopyWithImpl<ProjectItemModel, ProjectItemModel>(
              this as ProjectItemModel, $identity, $identity);
  @override
  String toString() {
    return ProjectItemModelMapper.ensureInitialized()
        .stringifyValue(this as ProjectItemModel);
  }

  @override
  bool operator ==(Object other) {
    return ProjectItemModelMapper.ensureInitialized()
        .equalsValue(this as ProjectItemModel, other);
  }

  @override
  int get hashCode {
    return ProjectItemModelMapper.ensureInitialized()
        .hashValue(this as ProjectItemModel);
  }
}

extension ProjectItemModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectItemModel, $Out> {
  ProjectItemModelCopyWith<$R, ProjectItemModel, $Out>
      get $asProjectItemModel => $base
          .as((v, t, t2) => _ProjectItemModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectItemModelCopyWith<$R, $In extends ProjectItemModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? name,
      String? tag,
      int? stitch,
      int? row,
      String? picurl,
      String? description,
      String? yarn,
      String? hook,
      double? time});
  ProjectItemModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProjectItemModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectItemModel, $Out>
    implements ProjectItemModelCopyWith<$R, ProjectItemModel, $Out> {
  _ProjectItemModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectItemModel> $mapper =
      ProjectItemModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          Object? tag = $none,
          int? stitch,
          int? row,
          Object? picurl = $none,
          Object? description = $none,
          Object? yarn = $none,
          Object? hook = $none,
          Object? time = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (tag != $none) #tag: tag,
        if (stitch != null) #stitch: stitch,
        if (row != null) #row: row,
        if (picurl != $none) #picurl: picurl,
        if (description != $none) #description: description,
        if (yarn != $none) #yarn: yarn,
        if (hook != $none) #hook: hook,
        if (time != $none) #time: time
      }));
  @override
  ProjectItemModel $make(CopyWithData data) => ProjectItemModel(
      data.get(#id, or: $value.id),
      data.get(#name, or: $value.name),
      data.get(#tag, or: $value.tag),
      data.get(#stitch, or: $value.stitch),
      data.get(#row, or: $value.row),
      data.get(#picurl, or: $value.picurl),
      data.get(#description, or: $value.description),
      data.get(#yarn, or: $value.yarn),
      data.get(#hook, or: $value.hook),
      data.get(#time, or: $value.time));

  @override
  ProjectItemModelCopyWith<$R2, ProjectItemModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProjectItemModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CreateNewProjectDtoMapper extends ClassMapperBase<CreateNewProjectDto> {
  CreateNewProjectDtoMapper._();

  static CreateNewProjectDtoMapper? _instance;
  static CreateNewProjectDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateNewProjectDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateNewProjectDto';

  static String _$name(CreateNewProjectDto v) => v.name;
  static const Field<CreateNewProjectDto, String> _f$name =
      Field('name', _$name);
  static String? _$tag(CreateNewProjectDto v) => v.tag;
  static const Field<CreateNewProjectDto, String> _f$tag =
      Field('tag', _$tag, opt: true);
  static int _$stitch(CreateNewProjectDto v) => v.stitch;
  static const Field<CreateNewProjectDto, int> _f$stitch =
      Field('stitch', _$stitch);
  static int _$row(CreateNewProjectDto v) => v.row;
  static const Field<CreateNewProjectDto, int> _f$row = Field('row', _$row);
  static String? _$picurl(CreateNewProjectDto v) => v.picurl;
  static const Field<CreateNewProjectDto, String> _f$picurl =
      Field('picurl', _$picurl, opt: true);
  static String? _$description(CreateNewProjectDto v) => v.description;
  static const Field<CreateNewProjectDto, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$yarn(CreateNewProjectDto v) => v.yarn;
  static const Field<CreateNewProjectDto, String> _f$yarn =
      Field('yarn', _$yarn, opt: true);
  static String? _$hook(CreateNewProjectDto v) => v.hook;
  static const Field<CreateNewProjectDto, String> _f$hook =
      Field('hook', _$hook, opt: true);
  static double? _$time(CreateNewProjectDto v) => v.time;
  static const Field<CreateNewProjectDto, double> _f$time =
      Field('time', _$time, opt: true);

  @override
  final MappableFields<CreateNewProjectDto> fields = const {
    #name: _f$name,
    #tag: _f$tag,
    #stitch: _f$stitch,
    #row: _f$row,
    #picurl: _f$picurl,
    #description: _f$description,
    #yarn: _f$yarn,
    #hook: _f$hook,
    #time: _f$time,
  };

  static CreateNewProjectDto _instantiate(DecodingData data) {
    return CreateNewProjectDto(
        name: data.dec(_f$name),
        tag: data.dec(_f$tag),
        stitch: data.dec(_f$stitch),
        row: data.dec(_f$row),
        picurl: data.dec(_f$picurl),
        description: data.dec(_f$description),
        yarn: data.dec(_f$yarn),
        hook: data.dec(_f$hook),
        time: data.dec(_f$time));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateNewProjectDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateNewProjectDto>(map);
  }

  static CreateNewProjectDto fromJson(String json) {
    return ensureInitialized().decodeJson<CreateNewProjectDto>(json);
  }
}

mixin CreateNewProjectDtoMappable {
  String toJson() {
    return CreateNewProjectDtoMapper.ensureInitialized()
        .encodeJson<CreateNewProjectDto>(this as CreateNewProjectDto);
  }

  Map<String, dynamic> toMap() {
    return CreateNewProjectDtoMapper.ensureInitialized()
        .encodeMap<CreateNewProjectDto>(this as CreateNewProjectDto);
  }

  CreateNewProjectDtoCopyWith<CreateNewProjectDto, CreateNewProjectDto,
      CreateNewProjectDto> get copyWith => _CreateNewProjectDtoCopyWithImpl<
          CreateNewProjectDto, CreateNewProjectDto>(
      this as CreateNewProjectDto, $identity, $identity);
  @override
  String toString() {
    return CreateNewProjectDtoMapper.ensureInitialized()
        .stringifyValue(this as CreateNewProjectDto);
  }

  @override
  bool operator ==(Object other) {
    return CreateNewProjectDtoMapper.ensureInitialized()
        .equalsValue(this as CreateNewProjectDto, other);
  }

  @override
  int get hashCode {
    return CreateNewProjectDtoMapper.ensureInitialized()
        .hashValue(this as CreateNewProjectDto);
  }
}

extension CreateNewProjectDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateNewProjectDto, $Out> {
  CreateNewProjectDtoCopyWith<$R, CreateNewProjectDto, $Out>
      get $asCreateNewProjectDto => $base.as(
          (v, t, t2) => _CreateNewProjectDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreateNewProjectDtoCopyWith<$R, $In extends CreateNewProjectDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? tag,
      int? stitch,
      int? row,
      String? picurl,
      String? description,
      String? yarn,
      String? hook,
      double? time});
  CreateNewProjectDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateNewProjectDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateNewProjectDto, $Out>
    implements CreateNewProjectDtoCopyWith<$R, CreateNewProjectDto, $Out> {
  _CreateNewProjectDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateNewProjectDto> $mapper =
      CreateNewProjectDtoMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          Object? tag = $none,
          int? stitch,
          int? row,
          Object? picurl = $none,
          Object? description = $none,
          Object? yarn = $none,
          Object? hook = $none,
          Object? time = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (tag != $none) #tag: tag,
        if (stitch != null) #stitch: stitch,
        if (row != null) #row: row,
        if (picurl != $none) #picurl: picurl,
        if (description != $none) #description: description,
        if (yarn != $none) #yarn: yarn,
        if (hook != $none) #hook: hook,
        if (time != $none) #time: time
      }));
  @override
  CreateNewProjectDto $make(CopyWithData data) => CreateNewProjectDto(
      name: data.get(#name, or: $value.name),
      tag: data.get(#tag, or: $value.tag),
      stitch: data.get(#stitch, or: $value.stitch),
      row: data.get(#row, or: $value.row),
      picurl: data.get(#picurl, or: $value.picurl),
      description: data.get(#description, or: $value.description),
      yarn: data.get(#yarn, or: $value.yarn),
      hook: data.get(#hook, or: $value.hook),
      time: data.get(#time, or: $value.time));

  @override
  CreateNewProjectDtoCopyWith<$R2, CreateNewProjectDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateNewProjectDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
