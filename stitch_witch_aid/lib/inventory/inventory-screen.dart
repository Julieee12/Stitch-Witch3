import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-item.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'item-state.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';
import 'add-item-button.dart';
import 'inventory-expanded-view.dart';

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
                    return GestureDetector(
                      onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemExpandedView(indexToUpdate: index))
                        );
                      },
                    child: InventoryItem(
                        item: InventoryItemModel(
                            id: state.items[index].id,
                            name: state.items[index].name,
                            description: state.items[index].description,
                            picurl: state.items[index].picurl ),
                        color: BrandColors.purpleSoft)
                    );
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
                child: AddItemButton(buildContext: context, state: state,),

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
