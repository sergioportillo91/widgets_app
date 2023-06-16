import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones de flutter',
      link: '/buttons',
      icon: Icons.ads_click_sharp),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones de flutter',
      link: '/buttons',
      icon: Icons.ads_click_sharp),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones de flutter',
      link: '/buttons',
      icon: Icons.ads_click_sharp),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones de flutter',
      link: '/buttons',
      icon: Icons.ads_click_sharp),
];
