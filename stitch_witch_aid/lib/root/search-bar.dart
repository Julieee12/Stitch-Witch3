import 'package:flutter/material.dart';

import 'brand-colors.dart';

class TopSearchBar extends StatefulWidget {
  const TopSearchBar({super.key});

  @override
  State<TopSearchBar> createState() => _TopSearchBarState();
}

class _TopSearchBarState extends State<TopSearchBar> {



  @override
  Widget build(BuildContext context) {
      return Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),

            child: TextFormField(
              style: TextStyle(fontSize: 22, fontFamily: 'Comic Sans'),
              decoration: InputDecoration(
                //BORDER
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),

                //COLOUR
                filled: true,
                //fillColor: BrandColors.purpleSoft,

                //ICON
                prefixIcon:  Icon(
                  Icons.search,
                  color: BrandColors.purpleLight,
                  size: 35,
                ),

                //HINT
                hintText: "search stuff here",
                hintStyle: TextStyle(fontSize: 22),

                contentPadding: EdgeInsets.only(top: 15),
              ),
              onTap: () {
                //TODO: implement search
              },
            ),
      );
  }
}
