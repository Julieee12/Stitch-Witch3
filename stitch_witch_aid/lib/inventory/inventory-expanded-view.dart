import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/inventory/item-state.dart';
import 'package:stitch_witch_aid/tag/all-tags.dart';
import 'package:stitch_witch_aid/tag/tags-model.dart';

import '../root/brand-colors.dart';
import 'inventory-update-dialog.dart';

class ItemExpandedView extends StatefulWidget {
  final InventoryItemModel selectedItem;

  const ItemExpandedView({super.key, required this.selectedItem});

  @override
  State<ItemExpandedView> createState() => _ItemExpandedViewState();
}

class _ItemExpandedViewState extends State<ItemExpandedView> {
  late List<TagDto> tags = [];
  late TagDto selectedTag;

  @override
  void initState() {
    getAllItemTagTypes();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) => Scaffold(
        backgroundColor: BrandColors.purpleExtraLight,
        appBar: AppBar(
          title: Text(
            widget.selectedItem.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: BrandColors.purpleSoft,
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<ItemBloc>(context).clientDeletesItemItems(widget.selectedItem.id);
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 320,
                        maxHeight: 400,
                      ),
                      child: Material(
                        color: BrandColors.purpleExtraLight,
                        borderRadius: BorderRadius.circular(20),
                        child: UpdateItemDialog(itemToUpdate: widget.selectedItem),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image display
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: widget.selectedItem.picurl != null && widget.selectedItem.picurl!.isNotEmpty
                        ? Image.network(
                      widget.selectedItem.picurl!,
                      height: 200,
                      fit: BoxFit.contain,
                    )
                        : Image.asset(
                      'assets/invplace.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Description
                  Text(
                    widget.selectedItem.description ?? "No description available",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),


                  ////////////// TAGS /////////////////
                  Row(

                    children: [
                      Text(
                        "add tag:",
                        style: TextStyle(
                            fontSize: 16,
                            color: BrandColors.purpleDark),
                      ),
                      Container(
                        width: 80,
                        child: DropdownButtonFormField<String>(
                          value: selectedTag.tagTypeId,
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: BrandColors.purpleVeryLight,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1.5),
                            ),
                          ),
                          items: tags.map((currentTag) {
                            return DropdownMenuItem<String>(
                              value: currentTag.tagTypeId,
                              child: Text(currentTag.typename),
                            );
                          }).toList(),
                          onChanged: (String? selectedValue) {
                            setState(() {
                              selectedTag = tags.firstWhere((tag) => tag.tagTypeId == selectedValue);
                              print(selectedTag);
                            });
                          },
                        ),
                      ),
                      OutlinedButton(
                          onPressed: () {

                            BlocProvider.of<ItemBloc>(context).clientAddsTagToItem(widget.selectedItem.id, selectedTag.tagTypeId);

                          },
                          child: Text("Add")),
                    ],
                  ),

                  // "TAGS" TEXT
                  Text(
                    "Tags:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.purpleDark),
                  ),
                  const SizedBox(height: 10),

                  //ALL OF THE ACTUAL TAGS
                  widget.selectedItem.tags != null && widget.selectedItem.tags!.isNotEmpty ?
                  Container(
                    height: 100,
                    child: GridView.count(
                        crossAxisCount: widget.selectedItem.tags!.length,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 2,
                        childAspectRatio: 5,
                      children: List.generate(widget.selectedItem.tags!.length, (index) {
                        return ButtonTheme(
                          height: 5,
                          minWidth: 10,
                          child: FilledButton(
                            onPressed: () {
                              setState(() {
                                context.read<ItemBloc>().clientDeletesTagFromItem(widget.selectedItem.id, widget.selectedItem.tags[index].tagTypeId);
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: BrandColors.purpleLight,
                            ),
                            child: Text(
                              widget.selectedItem.tags![index].typename,
                              style: TextStyle(fontSize: 15,),),
                          ),
                        );
                      }),
                    ),
                  )
                : const SizedBox(height: 1,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //gets the tag type variables for each tag name
  void getAllItemTagTypes(){
    if(TagVariables.allTags.isNotEmpty){
      // if the tag (variable) has the same name as any
      // of the strings in itemTags, add it to the list
      TagVariables.itemTags.forEach((tagName) {
        tags.add(
            TagVariables.allTags.firstWhere(
                    (tag) => tag.typename == tagName));

      });

      tags.forEach((tag)  {
        print(tag.typename);
      });

      selectedTag = tags.first;
    } else{
      print("TAGS R EMPTY!! EMPTY !!!!! MEPTY!!!!!!!!!! EMPOTY!!!!!!!!");
    }
  }






}
