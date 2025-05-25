import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/inventory/item-state.dart';
import 'package:stitch_witch_aid/inventory/item-tag-model.dart';

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

    // Trigger tag fetching after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ItemBloc>().clientWantsToGetAllItemTagsFromItem(itemToUpdate.id);
    });

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
                  if (state.tagsForItem != null && state.tagsForItem!.isNotEmpty)
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: state.tagsForItem!
                          .map((tag) => Chip(
                        label: Text(tag.itemId),
                        backgroundColor: BrandColors.purpleVeryLight,
                      ))
                          .toList(),
                    )
                  else
                    const Text("No tags assigned."),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
