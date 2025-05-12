import 'package:flutter/material.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';

class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'title': 'Swatch Adapter', 'image': 'assets/swatch.png'},
      {'title': 'Pattern Creator', 'image': 'assets/pattern.png'},
      {'title': 'Yarn Converter', 'image': 'assets/yarn.png'},
      {'title': 'Hook Size Converter', 'image': 'assets/hook.png'},
      {
        'title': 'Distribute Increase and Decrease',
        'image': 'assets/increase.png'
      },
      {'title': 'Length unit converter ', 'image': 'assets/unit.png'},
      {'title': 'Type Of Stitches', 'image': 'assets/stitches.png'},
      {'title': 'EU/US Terms', 'image': 'assets/terms.png'},
    ];

    return Container(
      color: BrandColors.purpleExtraLight,
      child: Stack(
        children: [
          Tags(["gl", "O", "ser", "Y"]),
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
              children: List.generate(8, (index) {
                final item = items[index];
                return _buildGridItem(
                  BrandColors.purpleSoft,
                  item['title']!,
                  item['image']!,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(Color color, String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
