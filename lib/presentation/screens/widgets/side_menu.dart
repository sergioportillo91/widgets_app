import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const SideMenu({super.key, required this.globalKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navigationDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNoch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navigationDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navigationDrawerIndex = value;
        });

        final menuSelected = appMenuItems[value];

        context.go(menuSelected.link);
        widget.globalKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, hasNoch ? 10 : 20, 16, 10),
          child: const Text('Menú'),
        ),
        ...appMenuItems.sublist(0, 3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 16, 10),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 5, 16, 10),
          child: Text('Otras opciones'),
        ),
        ...appMenuItems.sublist(3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
