part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    required bool isLoading,
  }) = _FeedbackState;

  factory FeedbackState.initial() => const FeedbackState(isLoading: false);
}
