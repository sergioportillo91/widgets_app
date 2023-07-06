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
      icon: Icons.smart_button_sharp),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Varios tarjetas de flutter',
      link: '/cards',
      icon: Icons.photo_album_outlined),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y controles',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Animaciones en container',
      link: '/animatedContainer',
      icon: Icons.check_box_outline_blank_outlined),
];
