part of 'buttom_navigation_bloc.dart';

@freezed
class ButtomNavigationState with _$ButtomNavigationState {
  const ButtomNavigationState._();
  const factory ButtomNavigationState({required NavigationPages page}) = _ButtomNavigationState;
  factory ButtomNavigationState.initial() => const ButtomNavigationState(page: NavigationPages.dashboard);
}
