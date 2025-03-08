import 'package:connectivity_plus/connectivity_plus.dart';
import '../../application/message_notifier/message_notifier.dart';
import '../../domain/feedback/feedback.dart';
import '../../domain/feedback/i_feed_back_repository.dart';
import 'feedback_remote.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IFeedbackRepository)
class FeedbackRepository implements IFeedbackRepository {
  final Connectivity connectivity;
  final MessageNotifier messageNotifier;
  final IFeedbackRemote feedbackRemote;
  const FeedbackRepository(this.connectivity, this.messageNotifier, this.feedbackRemote);

  @override
  Future<bool> sendFeedback(Feedback feedback, {String? email}) async {
    final hasInternetConnection = await connectivity.checkConnectivity();
    if (hasInternetConnection != ConnectivityResult.none) {
      final result = await feedbackRemote.sendFeedback(feedback, email);

      if (result) {
        messageNotifier.notifySuccess(successMsg: 'Thank you! Feedback recieved');
        return result;
      }
    }
    messageNotifier.notifyInfo(infoMsg: 'Check your Internet connection');
    return false;
  }
}
