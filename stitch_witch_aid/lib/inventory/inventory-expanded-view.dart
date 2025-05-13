import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/blocs/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/projects/item-state.dart';

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

    InventoryItemModel itemToUpdate = BlocProvider.of<ItemBloc>(context).state.items[widget.indexToUpdate];

    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context,state) {setState(() {}); },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(itemToUpdate.name),
          backgroundColor: BrandColors.purpleSoft,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //picture
                if(itemToUpdate.picurl != null)
                  Image.network(itemToUpdate.picurl!),
                SizedBox(height: 20,),
                //description
                Text(itemToUpdate.description ?? "No description available",
                style: TextStyle(fontSize: 16),),
                //DELETE button
                TextButton(onPressed: () {
                  BlocProvider.of<ItemBloc>(context).clientDeletesItemItems(itemToUpdate.id);

                  Navigator.pop(context);

                }, child: Text("Delete")),
                //UPDATE button
                TextButton(onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => UpdateItemDialog(itemToUpdate: itemToUpdate));

                }, child: Text("Update")),

              ],
            ),
        ),
      ),
    );
  }
}
