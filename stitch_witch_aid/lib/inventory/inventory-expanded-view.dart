import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/blocs/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/inventory/item-state.dart';

import '../root/brand-colors.dart';
import 'inventory-update-dialog.dart';

class ItemExpandedView extends StatefulWidget {
  final int indexToUpdate;

  const ItemExpandedView({super.key, required this.indexToUpdate});

  @override
  State<ItemExpandedView> createState() => _ItemExpandedViewState();
}

class _ItemExpandedViewState extends State<ItemExpandedView> {
  @override
  Widget build(BuildContext context) {
    InventoryItemModel itemToUpdate =
    BlocProvider.of<ItemBloc>(context).state.items[widget.indexToUpdate];
    

    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) => Scaffold(
        backgroundColor: BrandColors.purpleExtraLight,
        appBar: AppBar(
          title: Text(
            itemToUpdate.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: BrandColors.purpleSoft,
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<ItemBloc>(context).clientDeletesItemItems(itemToUpdate.id);
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
                        child: UpdateItemDialog(itemToUpdate: itemToUpdate),
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
                    child: itemToUpdate.picurl != null && itemToUpdate.picurl!.isNotEmpty
                        ? Image.network(
                      itemToUpdate.picurl!,
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
                    itemToUpdate.description ?? "No description available",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),

                  // Tags
                  Text(
                    "Tags:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.purpleDark),
                  ),
                  const SizedBox(height: 10),
                  ////////////// TAGS /////////////////

                  itemToUpdate.tags != null && itemToUpdate.tags!.isNotEmpty ?
                  Container(
                    height: 100,
                    child: GridView.count(
                        crossAxisCount: itemToUpdate.tags!.length,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 2,
                        childAspectRatio: 5,
                      children: List.generate(itemToUpdate.tags!.length, (index) {
                        return ButtonTheme(
                          height: 5,
                          minWidth: 10,
                          child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: BrandColors.purpleLight,
                            ),
                            child: Text(
                              itemToUpdate.tags![index].typename,
                              style: TextStyle(fontSize: 15,),),
                          ),
                        );
                      }),
                    ),
                  )
                : const SizedBox(height: 1,),
                  
                  /*if (state.tagsForItem != null && state.tagsForItem!.isNotEmpty)
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: state.tagsForItem!
                          .map((tag) => Chip(
                        label: Text("nothing yet"),
                        backgroundColor: BrandColors.purpleVeryLight,
                      ))
                          .toList(),
                    )
                  else
                    const Text("No tags assigned."),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
