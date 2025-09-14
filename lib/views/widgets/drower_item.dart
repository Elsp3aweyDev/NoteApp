// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_note/views/models/drower_item_model.dart';

class DrowerItems extends StatelessWidget {
  const DrowerItems({super.key, required this.drowerItemModel});
  final DrowerItemModel drowerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drowerItemModel.name),
      leading: Icon(drowerItemModel.icon),
    );
  }
}
