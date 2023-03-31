import 'package:androidrouting/screens/shared/named_nav_bar_item_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class MainScreen extends StatelessWidget {
  final Widget screen;

  MainScreen({Key? key, required this.screen}) : super(key: key);

  final tabs = [
    NamedNavigationBarItemWidget(
      initialLocation: Routes.homeNamedPage,
      icon: const Icon(Icons.home),
      label: 'Home',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.profileNamedPage,
      icon: const Icon(Icons.person),
      label: 'Profile',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.settingsNamedPage,
      icon: const Icon(Icons.settings),
      label: 'Setting',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
    );
  }
}
