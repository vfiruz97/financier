import 'dart:async';

import 'package:bloc/bloc.dart';
import '../auth/auth/auth_bloc.dart';
import '../../domain/feedback/feedback.dart';
import '../../domain/feedback/i_feed_back_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';
part 'feedback_bloc.freezed.dart';

@injectable
class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final IFeedbackRepository feedbackRepository;
  final AuthBloc authBloc;
  FeedbackBloc(this.feedbackRepository, this.authBloc) : super(FeedbackState.initial()) {
    on<_Send>(_onSend);
  }

  FutureOr<void> _onSend(_Send event, Emitter<FeedbackState> emit) async {
    emit(state.copyWith(isLoading: true));
    final email = authBloc.state.user.email.getOrElse('cannot get email');
    await feedbackRepository.sendFeedback(event.feedback, email: email);
    emit(state.copyWith(isLoading: false));
  }
}
