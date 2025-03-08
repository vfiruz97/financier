part of 'buttom_navigation_bloc.dart';

@freezed
class ButtomNavigationEvent with _$ButtomNavigationEvent {
  const factory ButtomNavigationEvent.push(NavigationPages page) = _Push;
}
