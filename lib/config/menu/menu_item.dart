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
  MenuItem(
      title: 'Ui controls',
      subtitle: 'Multiples controles de usuario',
      link: '/ui-controls',
      icon: Icons.input_outlined),
  MenuItem(
      title: 'Tutorial de app',
      subtitle: 'Tutorial paso a paso',
      link: '/tutorial',
      icon: Icons.input_outlined),
  MenuItem(
      title: 'Infinite Scroll',
      subtitle: 'Scroll infinito',
      link: '/infinitescroll',
      icon: Icons.list_alt),
];
