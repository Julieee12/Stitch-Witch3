import 'package:flutter/material.dart';
import '../root/brand-colors.dart';

class Glossary extends StatelessWidget {
  const Glossary ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.purpleExtraLight,
      child: Padding(
        padding: const EdgeInsets.only(top: 110),
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 15,
          children: List.generate(10, (index) {
            return _buildGridItem(BrandColors.purpleSoft);
          }),
        ),
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
