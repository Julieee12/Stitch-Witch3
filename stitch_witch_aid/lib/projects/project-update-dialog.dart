import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/projects/project-bloc.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';

import '../root/brand-colors.dart';

class UpdateProjectDialog extends StatefulWidget {
  final ProjectItemModel projectToUpdate;

  const UpdateProjectDialog({required this.projectToUpdate, super.key});

  @override
  State<UpdateProjectDialog> createState() => _UpdateProjectDialogState();
}

class _UpdateProjectDialogState extends State<UpdateProjectDialog> {
  final _formKey = GlobalKey<FormState>();

  late String _id;
  late String _name;
  late String _description;
  late int _stitch;
  late int _row;
  late String _tag;
  late String _picture;
  late String _yarn;
  late String _hook;

  @override
  void initState() {
    super.initState();
    _id = widget.projectToUpdate.id;
    _name = widget.projectToUpdate.name;
    _description = widget.projectToUpdate.description ?? ''; // Optional
    _stitch = widget.projectToUpdate.stitch;
    _row = widget.projectToUpdate.row;
    _tag = widget.projectToUpdate.tag ?? ''; // Optional
    _picture = widget.projectToUpdate.picurl ?? ''; // Optional
    _yarn = widget.projectToUpdate.yarn ?? ''; // Optional
    _hook = widget.projectToUpdate.hook ?? ''; // Optional
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectBloc, ProjectsState>(
      listener: (context, state) {},
      builder: (context, state) => Dialog(
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
                Text(
                  'Update Project',
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
                    labelText: 'Project Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: BrandColors.purpleVeryLight,
                  ),
                  initialValue: _name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                  onChanged: (value) => _name = value,
                ),
                const SizedBox(height: 15),

                // Description input field (optional)
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Description (optional)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: BrandColors.purpleVeryLight,
                  ),
                  initialValue: _description,
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
                  initialValue: _tag,
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
                  initialValue: _picture,
                  onChanged: (value) => _picture = value, // Optional
                ),
                const SizedBox(height: 20),

                // Yarn type input field (optional)
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Yarn Type (optional)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: BrandColors.purpleVeryLight,
                  ),
                  initialValue: _yarn,
                  onChanged: (value) => _yarn = value, // Optional
                ),
                const SizedBox(height: 20),

                // Hook type input field (optional)
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Hook Type (optional)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: BrandColors.purpleVeryLight,
                  ),
                  initialValue: _hook,
                  onChanged: (value) => _hook = value, // Optional
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

                        final updateDto = UpdateProjectDto(
                            id: _id,
                            name: _name,
                            description: _description,
                            stitch: _stitch,
                            row: _row,
                            tag: _tag,
                            picurl: _picture,
                            yarn: _yarn,
                            hook: _hook
                        );

                        // You can now use this item, e.g., adding to your state or database
                        BlocProvider.of<ProjectBloc>(context).clientUpdatesProject(updateDto);

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
      ),
    );
  }
}