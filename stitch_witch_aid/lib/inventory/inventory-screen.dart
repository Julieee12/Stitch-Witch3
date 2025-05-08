import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/blocs/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-item.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/states/item-state.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';
import '../root/add-button.dart'; // Make sure this import points to the correct file

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});



  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ItemBloc>().clientWantsToGetAllItems();
    });

    return BlocConsumer<ItemBloc, ItemState>(
        listener: (context, state) {},
        builder: (context, state) => Container(
          color: BrandColors.purpleExtraLight,
          child: Stack(
            children: [
              Tags(["in", "ven", "tory"]),
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
                  /*
              * Get list of all items from the backend
              * */

                  children: List.generate(state.items.length, (index) {
                    return InventoryItem(
                        item: InventoryItemModel(
                            id: state.items[index].id,
                            name: state.items[index].name,
                            description: state.items[index].description,
                            tag: state.items[index].tag,
                            picUrl: state.items[index].picUrl ),
                        color: BrandColors.purpleSoft);
                  }),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                /*
            * Pass the item for the backend to create
            * The backend then returns the newly created item,
            * which we can then show
            * */
                child: AddButton(),

              ),
            ],
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
