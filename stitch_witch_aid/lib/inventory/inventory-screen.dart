import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-item.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/tag/all-tags.dart';
import 'item-state.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';
import 'add-item-button.dart';
import 'inventory-expanded-view.dart';
import 'item-tags.dart';

class InventoryScreen extends StatefulWidget {

  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {

  //this is a very hacky way to do this but I have no clue how to refresh a parent page
  //from a child component and I kinda need to do that for tag searching
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //gets all items (and their tags)
      context.read<ItemBloc>().clientWantsToGetAllItemsWithTags();

      //get all tags in general (will need for expanded view)
      context.read<ItemBloc>().clientGetsAllTags();
    });

    return BlocConsumer<ItemBloc, ItemState>(
        listener: (context, state) {},
        builder: (context, state) => Container(
          color: BrandColors.purpleExtraLight,
          child: Stack(
            children: [
              ItemTags(TagVariables.itemTags, refreshPage: refreshPage,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TopSearchBar(caller: widget),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 15,

                  children: List.generate(state.filteredItems.length, (index) {
                    return GestureDetector(
                      onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemExpandedView(indexToUpdate: index))
                        );
                      },
                    child: InventoryItem(
                        item: InventoryItemModel(
                            id: state.filteredItems[index].id,
                            name: state.filteredItems[index].name,
                            description: state.filteredItems[index].description,
                            picurl: state.filteredItems[index].picurl,
                            tags: state.filteredItems[index].tags ),
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
