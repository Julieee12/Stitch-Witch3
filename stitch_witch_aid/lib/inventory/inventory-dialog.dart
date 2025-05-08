import 'package:flutter/material.dart';

import '../root/brand-colors.dart';
import 'inventory-model.dart';

class InventoryDialog extends StatefulWidget {
  const InventoryDialog({super.key});

  @override
  State<InventoryDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<InventoryDialog> {
  final _formKey = GlobalKey<FormState>();


  late String _name;
  late String _description;
  late String _tag;
  late String _picture;

  @override
  void initState() {
    super.initState();
    _name = '';
    _description = '';
    _tag = ''; // Optional
    _picture = ''; // Optional
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

              // Tag input field (optional)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tag (optional)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: BrandColors.purpleVeryLight,
                ),
                onChanged: (value) => _tag = value, // Optional
              ),
              const SizedBox(height: 15),

              // Picture URL input field (optional)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Picture (optional)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: BrandColors.purpleVeryLight,
                ),
                onChanged: (value) => _picture = value, // Optional
              ),
              const SizedBox(height: 20),

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
                      final newItem = InventoryItemModel(
                        id: DateTime.now().toString(), // You might want to generate a unique ID
                        name: _name,
                        description: _description,
                        tag: _tag,
                        picUrl: _picture,
                      );

                      // You can now use this item, e.g., adding to your state or database
                      print('Item Created: $newItem');

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
