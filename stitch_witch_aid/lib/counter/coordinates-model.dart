

import 'package:dart_mappable/dart_mappable.dart';
part 'coordinates-model.mapper.dart';

@MappableClass()
class CoordinatesModel with CoordinatesModelMappable {

  int x;
  int y;
  int z;

  CoordinatesModel ({required this.x, required this.y, required this.z});


}