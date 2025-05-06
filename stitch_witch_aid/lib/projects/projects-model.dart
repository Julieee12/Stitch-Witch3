class ProjectsItemModel {
  final String id;
  final String name;
  final String description;
  final String tag;
  final String picture;
  final String stitches;
  final String rows;
  final String time;

  ProjectsItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.tag,
    required this.picture,
    required this.stitches,
    required this.rows,
    required this.time
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'tag': tag,
      'picture': picture,
    };
  }
}
