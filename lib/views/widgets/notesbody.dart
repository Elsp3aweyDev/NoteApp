import 'package:flutter/material.dart';

class Notesbody extends StatelessWidget {
  const Notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            // height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("the title"),
                  subtitle: Text("the subtitle with mohsen elsp3awey"),
                  trailing: Icon(Icons.delete),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
