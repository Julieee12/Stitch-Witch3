import 'package:flutter/material.dart';

import 'brand-colors.dart';

class TopSearchBar extends StatefulWidget {
  final Widget caller;
  const TopSearchBar({super.key, required this.caller});

  @override
  State<TopSearchBar> createState() => _TopSearchBarState();
}

class _TopSearchBarState extends State<TopSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          style: const TextStyle(fontSize: 22),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: BrandColors.purpleVeryLight,
            prefixIcon: Icon(
              Icons.search,
              color: BrandColors.purpleLight,
              size: 30, // Reduced icon size
            ),
            hintText: "Search",
            hintStyle: const TextStyle(fontSize: 16),
            contentPadding: const EdgeInsets.symmetric(vertical: 0), // Tight padding
          ),
          onTap: () {
            // TODO: implement search
          },
        ),
      ),
    );
  }
}
