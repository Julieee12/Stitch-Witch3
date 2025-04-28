
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InventoryDialog extends StatelessWidget {

  Widget build(BuildContext context) {

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: const Color(0xFFB3EDDD),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Diary Entry",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E354E),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (value) => value!.isEmpty ? 'Please enter a title' : null,
                // initialValue: _title,
                // onChanged: (value) => _title = value,
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                // initialValue: _description,
                // onChanged: (value) => _description = value,
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (value) => value!.isEmpty ? 'Please enter a date' : null,
                // initialValue: _date,
                // onChanged: (value) => _date = value,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFF104F4D),
                      backgroundColor: const Color(0xFFF5CE88),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Cancel"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFF104F4D),
                      backgroundColor: const Color(0xFFF5CE88),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // onPressed: () {
                    //   // if (!_formKey.currentState!.validate()) return;
                    //   // final update = widget.diary.copyWith(
                    //   //   title: _title,
                    //   //   description: _description,
                    //   //   date: _date,
                    //   );

                      // Navigator.of(context).pop();
                    // },
                    onPressed: () {  },
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