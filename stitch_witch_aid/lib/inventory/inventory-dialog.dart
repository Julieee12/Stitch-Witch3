import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';
import 'package:stitch_witch_aid/root/single-image-upload.dart';

import 'Item-bloc.dart';
import 'item-state.dart';
import '../root/brand-colors.dart';
import 'inventory-model.dart';

class InventoryDialog extends StatefulWidget {
  final ItemState state;
  final BuildContext buildContext;

  const InventoryDialog({super.key, required this.state, required this.buildContext});

  @override
  State<InventoryDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<InventoryDialog> {
  final _formKey = GlobalKey<FormState>();


  late String _name;
  late String _description;
  late String? _image;

  @override
  void initState() {
    super.initState();
    _name = '';
    _description = '';
    _image = null; // Optional
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: BrandColors.purpleExtraLight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Add Item",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E354E),
                ),
              ),
              const SizedBox(height: 15),

              // Name input field (required)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Item Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: BrandColors.purpleVeryLight,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onChanged: (value) => _name = value,
              ),
              const SizedBox(height: 15),

              // Description input field (required)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: BrandColors.purpleVeryLight,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onChanged: (value) => _description = value,
              ),
              const SizedBox(height: 15),

              // Image upload field (optional)
              SingleImageUpload((base64Image) => _image = base64Image),

              // Buttons
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
                    child: const Text("Cancel"),
                  ),
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
                      if (!_formKey.currentState!.validate()) return;

                      // Create the new item
                      final newItem = InventoryItemDto(
                        name: _name,
                        description: _description,
                        image: _image,
                      );

                      // You can now use this item, e.g., adding to your state or database
                      print('Item Created: $newItem');

                      widget.buildContext.read<ItemBloc>().clientCreatesNewItem(newItem);
                      widget.buildContext.read<ItemBloc>().clientWantsToGetAllItems();

                      Navigator.of(context).pop();
                    },
                    child: const Text("Save"),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
