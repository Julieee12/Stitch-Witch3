import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/projects/projects-item.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import '../root/add-button.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.purpleExtraLight,
      child: Stack(
        children: [
          Tags(["pr", "oje", "cts"]),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TopSearchBar(caller: this),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 15,
              children: List.generate(10, (index) {
                return ProjectsItem(item: ProjectsItemModel(id:  'id', name: 'name', description: 'descrption', tag: 'tag', picture: 'url', stitches: '11', rows: '20', time: '44:23'), color: BrandColors.purpleSoft,);
              }),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: AddButton(),
          )
        ],
      ),
    );
  }

  Widget _buildGridItem(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
