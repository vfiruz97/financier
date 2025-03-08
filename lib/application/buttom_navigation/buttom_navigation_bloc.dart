import 'package:bloc/bloc.dart';
import '../../presentation/home.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'buttom_navigation_event.dart';
part 'buttom_navigation_state.dart';
part 'buttom_navigation_bloc.freezed.dart';

@injectable
class ButtomNavigationBloc extends Bloc<ButtomNavigationEvent, ButtomNavigationState> {
  ButtomNavigationBloc() : super(ButtomNavigationState.initial()) {
    on<_Push>(_onPush);
  }

  void _onPush(_Push event, Emitter<ButtomNavigationState> emit) {
    emit(state.copyWith(page: event.page));
  }
}
