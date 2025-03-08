import '../../domain/feedback/feedback.dart';
import '../../env.dart';
import '../http/dio.dart';
import 'package:injectable/injectable.dart';

abstract class IFeedbackRemote {
  Future<bool> sendFeedback(Feedback feedback, String? email);
}

@Singleton(as: IFeedbackRemote)
class FeedbackRemote implements IFeedbackRemote {
  @override
  Future<bool> sendFeedback(Feedback feedback, String? email) async {
    try {
      const url = Env.feedbackUrl;
      final result = await getDio().post(Uri.encodeFull(url), data: feedback.toEncodeJson(email: email));
      if (result.statusCode == 200) {
        return true;
      }
      return false;
    } catch (_) {
      return false;
    }
  }
}
