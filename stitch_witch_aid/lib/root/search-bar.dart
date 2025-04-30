
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

            child: TextFormField(
              style: TextStyle(fontSize: 22, ),
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
                //maybe you can use widget.caller
                //to get the original widget, if that's useful
                //if not, u can delete the "caller"
              },
            ),
      );
  }
}
