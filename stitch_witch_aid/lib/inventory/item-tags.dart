import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

import 'Item-bloc.dart';
import 'item-state.dart';

class ItemTags extends StatefulWidget {
  final List<String> tags;
  final refreshPage;
  //final List<InventoryItemModel> items;

  const ItemTags(this.tags, {super.key, this.refreshPage, });

  @override
  State<ItemTags> createState() => _ItemTagsState();
}

class _ItemTagsState extends State<ItemTags> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemBloc, ItemState>(
        listener: (context, state) {
      setState(() {});
    },
    builder: (context, state) => Container(
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.count(
            crossAxisCount: widget.tags.length,
            crossAxisSpacing: 20,
            mainAxisSpacing: 2,
            childAspectRatio: 4,
            children: List.generate(widget.tags.length, (index) {
              return createTagButton(widget.tags[index], state);
            })
          )
        ),
      ),
    );
  }


  Widget createTagButton(String text, ItemState state){
    return ButtonTheme(
      height: 10,
      child: FilledButton(
          onPressed: () {
            setState(() {
              List<InventoryItemModel> newFilteredItems = [];
              //if the tag is all then just show all
              if(text == "All"){
                state.filteredItems = state.items;
              } else {
                state.filteredItems.forEach((item) {
                  //if the item has tags and has tag with name
                  //searching by name is fine bc tags r hardcoded
                  if (item.tags.isNotEmpty && item.tags!
                      .where((tag) => tag.typename == text)
                      .isNotEmpty) {
                    newFilteredItems.add(item);
                    print("adding item to new list");
                  }
                }); //end of foreach

                print("changing filtered items");

                state.setFilteredItems(newFilteredItems);
              }

              widget.refreshPage();

            });

          },
        style: FilledButton.styleFrom(
          backgroundColor: BrandColors.purpleLight,
        ),
          child: Text(
            text,
            style: TextStyle(fontSize: 12,),),
      ),
    );
  }

}
