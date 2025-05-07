// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entities.dart';

class ItemMapper extends ClassMapperBase<Item> {
  ItemMapper._();

  static ItemMapper? _instance;
  static ItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Item';

  static String _$tagId(Item v) => v.tagId;
  static const Field<Item, String> _f$tagId = Field('tagId', _$tagId);
  static String _$picUrl(Item v) => v.picUrl;
  static const Field<Item, String> _f$picUrl = Field('picUrl', _$picUrl);
  static String _$description(Item v) => v.description;
  static const Field<Item, String> _f$description =
      Field('description', _$description);
  static String _$id(Item v) => v.id;
  static const Field<Item, String> _f$id = Field('id', _$id);
  static String _$name(Item v) => v.name;
  static const Field<Item, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Item> fields = const {
    #tagId: _f$tagId,
    #picUrl: _f$picUrl,
    #description: _f$description,
    #id: _f$id,
    #name: _f$name,
  };

  static Item _instantiate(DecodingData data) {
    return Item(
        data.dec(_f$tagId), data.dec(_f$picUrl), data.dec(_f$description),
        id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Item fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Item>(map);
  }

  static Item fromJson(String json) {
    return ensureInitialized().decodeJson<Item>(json);
  }
}

mixin ItemMappable {
  String toJson() {
    return ItemMapper.ensureInitialized().encodeJson<Item>(this as Item);
  }

  Map<String, dynamic> toMap() {
    return ItemMapper.ensureInitialized().encodeMap<Item>(this as Item);
  }

  ItemCopyWith<Item, Item, Item> get copyWith =>
      _ItemCopyWithImpl<Item, Item>(this as Item, $identity, $identity);
  @override
  String toString() {
    return ItemMapper.ensureInitialized().stringifyValue(this as Item);
  }

  @override
  bool operator ==(Object other) {
    return ItemMapper.ensureInitialized().equalsValue(this as Item, other);
  }

  @override
  int get hashCode {
    return ItemMapper.ensureInitialized().hashValue(this as Item);
  }
}

extension ItemValueCopy<$R, $Out> on ObjectCopyWith<$R, Item, $Out> {
  ItemCopyWith<$R, Item, $Out> get $asItem =>
      $base.as((v, t, t2) => _ItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemCopyWith<$R, $In extends Item, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? tagId,
      String? picUrl,
      String? description,
      String? id,
      String? name});
  ItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Item, $Out>
    implements ItemCopyWith<$R, Item, $Out> {
  _ItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Item> $mapper = ItemMapper.ensureInitialized();
  @override
  $R call(
          {String? tagId,
          String? picUrl,
          String? description,
          String? id,
          String? name}) =>
      $apply(FieldCopyWithData({
        if (tagId != null) #tagId: tagId,
        if (picUrl != null) #picUrl: picUrl,
        if (description != null) #description: description,
        if (id != null) #id: id,
        if (name != null) #name: name
      }));
  @override
  Item $make(CopyWithData data) => Item(
      data.get(#tagId, or: $value.tagId),
      data.get(#picUrl, or: $value.picUrl),
      data.get(#description, or: $value.description),
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name));

  @override
  ItemCopyWith<$R2, Item, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMapper extends ClassMapperBase<Project> {
  ProjectMapper._();

  static ProjectMapper? _instance;
  static ProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Project';

  static num _$stitch(Project v) => v.stitch;
  static const Field<Project, num> _f$stitch = Field('stitch', _$stitch);
  static num _$row(Project v) => v.row;
  static const Field<Project, num> _f$row = Field('row', _$row);
  static String _$yarn(Project v) => v.yarn;
  static const Field<Project, String> _f$yarn = Field('yarn', _$yarn);
  static String _$hook(Project v) => v.hook;
  static const Field<Project, String> _f$hook = Field('hook', _$hook);
  static DateTime _$time(Project v) => v.time;
  static const Field<Project, DateTime> _f$time = Field('time', _$time);
  static String _$tagId(Project v) => v.tagId;
  static const Field<Project, String> _f$tagId = Field('tagId', _$tagId);
  static String _$picUrl(Project v) => v.picUrl;
  static const Field<Project, String> _f$picUrl = Field('picUrl', _$picUrl);
  static String _$description(Project v) => v.description;
  static const Field<Project, String> _f$description =
      Field('description', _$description);
  static String _$id(Project v) => v.id;
  static const Field<Project, String> _f$id = Field('id', _$id);
  static String _$name(Project v) => v.name;
  static const Field<Project, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Project> fields = const {
    #stitch: _f$stitch,
    #row: _f$row,
    #yarn: _f$yarn,
    #hook: _f$hook,
    #time: _f$time,
    #tagId: _f$tagId,
    #picUrl: _f$picUrl,
    #description: _f$description,
    #id: _f$id,
    #name: _f$name,
  };

  static Project _instantiate(DecodingData data) {
    return Project(
        data.dec(_f$stitch),
        data.dec(_f$row),
        data.dec(_f$yarn),
        data.dec(_f$hook),
        data.dec(_f$time),
        data.dec(_f$tagId),
        data.dec(_f$picUrl),
        data.dec(_f$description),
        id: data.dec(_f$id),
        name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Project fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Project>(map);
  }

  static Project fromJson(String json) {
    return ensureInitialized().decodeJson<Project>(json);
  }
}

mixin ProjectMappable {
  String toJson() {
    return ProjectMapper.ensureInitialized()
        .encodeJson<Project>(this as Project);
  }

  Map<String, dynamic> toMap() {
    return ProjectMapper.ensureInitialized()
        .encodeMap<Project>(this as Project);
  }

  ProjectCopyWith<Project, Project, Project> get copyWith =>
      _ProjectCopyWithImpl<Project, Project>(
          this as Project, $identity, $identity);
  @override
  String toString() {
    return ProjectMapper.ensureInitialized().stringifyValue(this as Project);
  }

  @override
  bool operator ==(Object other) {
    return ProjectMapper.ensureInitialized()
        .equalsValue(this as Project, other);
  }

  @override
  int get hashCode {
    return ProjectMapper.ensureInitialized().hashValue(this as Project);
  }
}

extension ProjectValueCopy<$R, $Out> on ObjectCopyWith<$R, Project, $Out> {
  ProjectCopyWith<$R, Project, $Out> get $asProject =>
      $base.as((v, t, t2) => _ProjectCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectCopyWith<$R, $In extends Project, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {num? stitch,
      num? row,
      String? yarn,
      String? hook,
      DateTime? time,
      String? tagId,
      String? picUrl,
      String? description,
      String? id,
      String? name});
  ProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Project, $Out>
    implements ProjectCopyWith<$R, Project, $Out> {
  _ProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Project> $mapper =
      ProjectMapper.ensureInitialized();
  @override
  $R call(
          {num? stitch,
          num? row,
          String? yarn,
          String? hook,
          DateTime? time,
          String? tagId,
          String? picUrl,
          String? description,
          String? id,
          String? name}) =>
      $apply(FieldCopyWithData({
        if (stitch != null) #stitch: stitch,
        if (row != null) #row: row,
        if (yarn != null) #yarn: yarn,
        if (hook != null) #hook: hook,
        if (time != null) #time: time,
        if (tagId != null) #tagId: tagId,
        if (picUrl != null) #picUrl: picUrl,
        if (description != null) #description: description,
        if (id != null) #id: id,
        if (name != null) #name: name
      }));
  @override
  Project $make(CopyWithData data) => Project(
      data.get(#stitch, or: $value.stitch),
      data.get(#row, or: $value.row),
      data.get(#yarn, or: $value.yarn),
      data.get(#hook, or: $value.hook),
      data.get(#time, or: $value.time),
      data.get(#tagId, or: $value.tagId),
      data.get(#picUrl, or: $value.picUrl),
      data.get(#description, or: $value.description),
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name));

  @override
  ProjectCopyWith<$R2, Project, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProjectCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TagMapper extends ClassMapperBase<Tag> {
  TagMapper._();

  static TagMapper? _instance;
  static TagMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Tag';

  static String _$name(Tag v) => v.name;
  static const Field<Tag, String> _f$name = Field('name', _$name);
  static String _$id(Tag v) => v.id;
  static const Field<Tag, String> _f$id = Field('id', _$id);
  static String _$typeId(Tag v) => v.typeId;
  static const Field<Tag, String> _f$typeId = Field('typeId', _$typeId);

  @override
  final MappableFields<Tag> fields = const {
    #name: _f$name,
    #id: _f$id,
    #typeId: _f$typeId,
  };

  static Tag _instantiate(DecodingData data) {
    return Tag(data.dec(_f$name),
        id: data.dec(_f$id), typeId: data.dec(_f$typeId));
  }

  @override
  final Function instantiate = _instantiate;

  static Tag fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Tag>(map);
  }

  static Tag fromJson(String json) {
    return ensureInitialized().decodeJson<Tag>(json);
  }
}

mixin TagMappable {
  String toJson() {
    return TagMapper.ensureInitialized().encodeJson<Tag>(this as Tag);
  }

  Map<String, dynamic> toMap() {
    return TagMapper.ensureInitialized().encodeMap<Tag>(this as Tag);
  }

  TagCopyWith<Tag, Tag, Tag> get copyWith =>
      _TagCopyWithImpl<Tag, Tag>(this as Tag, $identity, $identity);
  @override
  String toString() {
    return TagMapper.ensureInitialized().stringifyValue(this as Tag);
  }

  @override
  bool operator ==(Object other) {
    return TagMapper.ensureInitialized().equalsValue(this as Tag, other);
  }

  @override
  int get hashCode {
    return TagMapper.ensureInitialized().hashValue(this as Tag);
  }
}

extension TagValueCopy<$R, $Out> on ObjectCopyWith<$R, Tag, $Out> {
  TagCopyWith<$R, Tag, $Out> get $asTag =>
      $base.as((v, t, t2) => _TagCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagCopyWith<$R, $In extends Tag, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? id, String? typeId});
  TagCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tag, $Out>
    implements TagCopyWith<$R, Tag, $Out> {
  _TagCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tag> $mapper = TagMapper.ensureInitialized();
  @override
  $R call({String? name, String? id, String? typeId}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (id != null) #id: id,
        if (typeId != null) #typeId: typeId
      }));
  @override
  Tag $make(CopyWithData data) => Tag(data.get(#name, or: $value.name),
      id: data.get(#id, or: $value.id),
      typeId: data.get(#typeId, or: $value.typeId));

  @override
  TagCopyWith<$R2, Tag, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TagTypeMapper extends ClassMapperBase<TagType> {
  TagTypeMapper._();

  static TagTypeMapper? _instance;
  static TagTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagTypeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagType';

  static String _$name(TagType v) => v.name;
  static const Field<TagType, String> _f$name = Field('name', _$name);
  static String _$id(TagType v) => v.id;
  static const Field<TagType, String> _f$id = Field('id', _$id);

  @override
  final MappableFields<TagType> fields = const {
    #name: _f$name,
    #id: _f$id,
  };

  static TagType _instantiate(DecodingData data) {
    return TagType(data.dec(_f$name), id: data.dec(_f$id));
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

mixin TagTypeMappable {
  String toJson() {
    return TagTypeMapper.ensureInitialized()
        .encodeJson<TagType>(this as TagType);
  }

  Map<String, dynamic> toMap() {
    return TagTypeMapper.ensureInitialized()
        .encodeMap<TagType>(this as TagType);
  }

  TagTypeCopyWith<TagType, TagType, TagType> get copyWith =>
      _TagTypeCopyWithImpl<TagType, TagType>(
          this as TagType, $identity, $identity);
  @override
  String toString() {
    return TagTypeMapper.ensureInitialized().stringifyValue(this as TagType);
  }

  @override
  bool operator ==(Object other) {
    return TagTypeMapper.ensureInitialized()
        .equalsValue(this as TagType, other);
  }

  @override
  int get hashCode {
    return TagTypeMapper.ensureInitialized().hashValue(this as TagType);
  }
}

extension TagTypeValueCopy<$R, $Out> on ObjectCopyWith<$R, TagType, $Out> {
  TagTypeCopyWith<$R, TagType, $Out> get $asTagType =>
      $base.as((v, t, t2) => _TagTypeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagTypeCopyWith<$R, $In extends TagType, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? id});
  TagTypeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagTypeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagType, $Out>
    implements TagTypeCopyWith<$R, TagType, $Out> {
  _TagTypeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagType> $mapper =
      TagTypeMapper.ensureInitialized();
  @override
  $R call({String? name, String? id}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (id != null) #id: id}));
  @override
  TagType $make(CopyWithData data) => TagType(data.get(#name, or: $value.name),
      id: data.get(#id, or: $value.id));

  @override
  TagTypeCopyWith<$R2, TagType, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagTypeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
