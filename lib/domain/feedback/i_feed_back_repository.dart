import 'feedback.dart';

abstract class IFeedbackRepository {
  Future<bool> sendFeedback(Feedback feedback, {String? email});
}
