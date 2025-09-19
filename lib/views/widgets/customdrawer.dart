import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_note/views/models/drower_item_model.dart';
import 'package:my_note/views/widgets/drawer_list.dart';

class CastumDrawer extends StatelessWidget {
  CastumDrawer({super.key});
  final ValueNotifier<ThemeMode> notifier = ValueNotifier(ThemeMode.light);
  final List drawerItemsList = const [
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.home, name: "D A S H B O A R D"),
    DrowerItemModel(icon: Icons.color_lens, name: "C H A N G E T H E M E"),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: notifier,
      builder: (_, value, _) {
        return Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 80)),
              DrawerList(drawerItemsList: drawerItemsList),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  icon: Icon(
                    value == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                  label: Text(
                    value == ThemeMode.light
                        ? 'Switch to Dark Mode'
                        : 'Switch to Light Mode',
                  ),
                  onPressed: () {
                    notifier.value = value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
