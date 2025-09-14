import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/drower_item.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
    required this.drawerItemsList,
  });

  final List drawerItemsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DrowerItems(drowerItemModel: drawerItemsList[index]);
      },
      itemCount: drawerItemsList.length,
      shrinkWrap: true,
    );
  }
}
