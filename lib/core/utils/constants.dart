import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const root = '/';
  static const welcomeNamedPage = '/home';
  static const questionOneNamedPage = '/questionOne';
  static const questionTwoNamedPage = '/questionTwo';
  static const questionTwoNumberInputNamedPage = '/questionTwoNumberInput';
  static const questionThreeNamedPage = '/questionThree';
  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const Text("Not found!!!");
}
