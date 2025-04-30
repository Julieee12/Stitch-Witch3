class Item {
  final String id;
  final String name;
  final String description;
  final String tag;
  final String picture;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.tag,
    required this.picture,
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
