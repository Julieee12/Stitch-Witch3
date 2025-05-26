import 'package:stitch_witch_aid/tag/tags-model.dart';

class TagVariables{
  static List<TagDto> allTags = []; // to reduce database calls

  // as of right now, tags are hardcoded so it's convenient
  // to store a list of all the tags for each type of thing

  static List<String> itemTags = [
    "All",
    "Hooks",
    "Yarn",
    "Favourites",
  ]; //items should only be able to have these tags added

  static List<String> projectTags = [
    "All",
    "In Progress",
    "Paused",
    "Favourites",
  ]; //projects should only be able to have these tags added

}

