import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_note/views/models/drower_item_model.dart';
import 'package:my_note/views/widgets/drawer_list.dart';

class CastumDrawer extends StatelessWidget {
  const CastumDrawer({super.key});
  final List drawerItemsList = const [
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.color_lens, name: "C H A N G E T H E M E"),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 80)),
          DrawerList(drawerItemsList: drawerItemsList),
        ],
      ),
    );

    // Drawer(
    //   backgroundColor: const Color.fromARGB(255, 238, 235, 235),
    //   child: ListView.builder(
    //     itemCount: 1,
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index) {
    //       return Column(children: []);
    //     },
    //   ),
    // );
  }
}
