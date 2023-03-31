import 'package:documentdetails/screens/shared/named_nav_bar_item_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class MainScreen extends StatelessWidget {
  final Widget screen;

  MainScreen({Key? key, required this.screen}) : super(key: key);

  final tabs = [
    NamedNavigationBarItemWidget(
      initialLocation: Routes.welcomeNamedPage,
      icon: const Icon(Icons.home),
      label: 'Welcome',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.questionOneNamedPage,
      icon: const Icon(Icons.person),
      label: 'QuestionOne',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.questionTwoNamedPage,
      icon: const Icon(Icons.settings),
      label: 'QuestionTwo',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.questionTwoNumberInputNamedPage,
      icon: const Icon(Icons.settings),
      label: 'QuestionTwoNumberInput',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.questionThreeNamedPage,
      icon: const Icon(Icons.settings),
      label: 'QuestionThreeInput',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
    );
  }
}
