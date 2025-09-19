import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/notesbody.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Notesbody();
      },
    );
  }
}
