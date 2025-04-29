import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/tags.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.purpleExtraLight,
        child: Stack(
          children: [
            Tags(["in","ven", "tory"]),
            TopSearchBar(caller: this),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: GridView.count(
                //shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 15,
                children: List.generate(10, (index) {
                  return _buildGridItem(BrandColors.purpleSoft);
                }),
              ),
            ),
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
