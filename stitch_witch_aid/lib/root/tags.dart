import 'package:flutter/material.dart';

class Tags extends StatefulWidget {
  final List<String> tags;

  const Tags(this.tags, {super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: widget.tags.length,
          crossAxisSpacing: 20,
          mainAxisSpacing: 2,
          childAspectRatio: 4,
          children: List.generate(widget.tags.length, (index) {
            return createTagButton(widget.tags[index]);
          })
        )
      ),
    );
  }


  Widget createTagButton(String text){
    return ButtonTheme(
      height: 10,
      child: FilledButton(
          onPressed: () {},
          child: Text(
            "text",
            style: TextStyle(fontSize: 12,),),
      ),
    );
  }

}
