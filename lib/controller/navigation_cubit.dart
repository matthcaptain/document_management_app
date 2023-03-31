import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import '../core/utils/constants.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(const NavigationState(
            bottomNavItems: Routes.welcomeNamedPage, index: 0));

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(const NavigationState(
            bottomNavItems: Routes.welcomeNamedPage, index: 0));
        break;
      case 1:
        emit(const NavigationState(
            bottomNavItems: Routes.questionOneNamedPage, index: 1));
        break;
      case 2:
        emit(const NavigationState(
            bottomNavItems: Routes.questionTwoNamedPage, index: 2));
        break;
      case 3:
        emit(const NavigationState(
            bottomNavItems: Routes.questionThreeNamedPage, index: 3));
        break;
    }
  }
}
