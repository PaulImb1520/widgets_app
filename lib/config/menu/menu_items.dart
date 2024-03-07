import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "Botones",
      subTitle: "Varios botones en Flutter",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Un contenedor estilizado",
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: "Progress Indicators",
      subTitle: "Generales y controlados",
      link: "/progress",
      icon: Icons.credit_card),
  MenuItem(
      title: "Snackbars and dialogs",
      subTitle: "Indicadores en pantalla",
      link: "/snackbars",
      icon: Icons.info),
  MenuItem(
      title: "Animated container",
      subTitle: "Animated Stateful widget",
      link: "/animated",
      icon: Icons.check_box_outlined),
  MenuItem(
      title: "UI Controles + Tiles",
      subTitle: "Flutter Controls Series",
      link: "/ui-controls",
      icon: Icons.pest_control_rodent),
];
