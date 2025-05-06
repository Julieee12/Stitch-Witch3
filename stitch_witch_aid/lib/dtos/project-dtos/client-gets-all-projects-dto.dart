import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/dtos/base-dto.dart';

part 'client-gets-all-projects-dto.mapper.dart';

@MappableClass()
class ClientGetsAllProjectsDto extends BaseDto with ClientGetsAllProjectsDtoMappable {
  ClientGetsAllProjectsDto(super.eventType, super.requestId);
}