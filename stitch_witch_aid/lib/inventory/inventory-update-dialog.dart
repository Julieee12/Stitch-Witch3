import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/Item-bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/inventory/item-state.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

class UpdateItemDialog extends StatefulWidget {
  final InventoryItemModel itemToUpdate;

  const UpdateItemDialog({super.key, required this.itemToUpdate});

  @override
  State<UpdateItemDialog> createState() => _UpdateItemDialogState();
}

class _UpdateItemDialogState extends State<UpdateItemDialog> {
  final _formKey = GlobalKey<FormState>();

  late String _id;
  late String _name;
  late String _description;
  late String _picUrl;

  @override
  void initState() {
    super.initState();
    _id = widget.itemToUpdate.id;
    _name = widget.itemToUpdate.name;
    _description = widget.itemToUpdate.description ?? " "; //optional
    _picUrl = widget.itemToUpdate.picurl ?? " "; //optional

  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context, state) {},
      builder: (context, state) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Update item',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E354E),
                  ),
                ),
                const SizedBox(height: 15),

                //////////// name input ///////////
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Item Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: BrandColors.purpleVeryLight
                  ),
                  initialValue: _name,
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'please enter a name';
                    }
                    return null;
                  },
                  onChanged: (value) => _name = value,
                ),
                const SizedBox(height: 15),

                //////////// description input ///////////
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Description (optional)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: BrandColors.purpleVeryLight
                  ),
                  initialValue: _description,
                  onChanged: (value) => _description = value,
                ),
                const SizedBox(height: 15),

                //////////// picUrl input ///////////
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Picture (optional)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: BrandColors.purpleVeryLight
                  ),
                  initialValue: _picUrl,
                  onChanged: (value) => _picUrl = value,
                ),
                const SizedBox(height: 15),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: TextButton.styleFrom(
                          foregroundColor: BrandColors.purpleVeryLight,
                          backgroundColor: BrandColors.purpleDark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text("Cancel")),
                      const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: BrandColors.purpleVeryLight,
                        backgroundColor: BrandColors.purpleDark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if(!_formKey.currentState!.validate()) return;

                        final updateItemDto = UpdateItemDto(
                          id: _id,
                          name: _name,
                          description: _description,
                          picurl: _picUrl,
                        );

                        BlocProvider.of<ItemBloc>(context).clientUpdatesItem(updateItemDto);

                        Navigator.of(context).pop();

                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
                
                
              ],
            )
            ),
        ),
      ),
    );
  }
}
