import 'package:documentdetails/controller/navigation_cubit.dart';
import 'package:documentdetails/screens/welcome/welcome_screen.dart';
import 'package:documentdetails/screens/main_screen.dart';
import 'package:documentdetails/screens/questionOne/question_one_screen.dart';
import 'package:documentdetails/screens/questionTwo/question_two_screen.dart';
import 'package:documentdetails/screens/questionTwo/question_two_number_screen.dart';
import 'package:documentdetails/screens/questionThree/question_three_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/constants.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.welcomeNamedPage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => NavigationCubit(),
            child: MainScreen(screen: child),
          );
        },
        routes: [
          GoRoute(
            path: Routes.welcomeNamedPage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: WelcomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.questionOneNamedPage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: QuestionOneScreen(),
            ),
          ),
          GoRoute(
            path: Routes.questionTwoNamedPage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: QuestionTwoScreen(),
            ),
          ),
          GoRoute(
            path: Routes.questionThreeNamedPage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: QuestionThreeScreen(),
            ),
          ),
          GoRoute(
              path: Routes.questionTwoNumberInputNamedPage,
              pageBuilder: (context, state) => const NoTransitionPage(
                    child: QuestionTwoNumberInputScreen(),
                  )),
        ],
      ),
    ],
    errorBuilder: (context, state) => const Text("Not found"),
  );

  static GoRouter get router => _router;
}
