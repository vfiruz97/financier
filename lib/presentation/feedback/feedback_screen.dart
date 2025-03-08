import '../../application/feedback/feedback_bloc.dart';
import '../../application/message_notifier/message_notifier.dart';
import '../../domain/feedback/feedback.dart';
import '../../injection.dart';
import '../widgets/components/buttons/primary_button.dart';
import '../widgets/components/white_card_widget.dart';
import '../widgets/home_app_bar_widget.dart';
import '../widgets/message_provider.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FeedbackBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const SafeArea(
          bottom: false,
          child: _FeedbackBody(),
        ),
      ),
    );
  }
}

class _FeedbackBody extends StatelessWidget {
  const _FeedbackBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        final feedback = Feedback();

        return MessageProvider(
          messageNotifier: getIt<MessageNotifier>(),
          onSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.body)));
          },
          onInfo: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.body)));
          },
          child: Stack(
            children: [
              // App bar
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: HomeAppBarWidget(
                      title: 'Send Feedback',
                      actions: [InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close))])),
              // Body
              Positioned(
                top: 60,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  color: Colors.blueGrey.shade100,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WhiteCardWidget(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Design:'),
                                    RatingBar.builder(
                                      initialRating: feedback.design,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 28,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        feedback.design = rating;
                                      },
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Features:'),
                                    RatingBar.builder(
                                      initialRating: feedback.features,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 28,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                                      onRatingUpdate: (rating) {
                                        feedback.features = rating;
                                      },
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Usability:'),
                                    RatingBar.builder(
                                      initialRating: feedback.usability,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 28,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                                      onRatingUpdate: (rating) {
                                        feedback.usability = rating;
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        WhiteCardWidget(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                    'Please write down what you are like or dislike in aplication and how to improve it:'),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        maxLength: 1000,
                                        onChanged: (value) {
                                          feedback.optional = value;
                                        },
                                        autofocus: true,
                                        decoration: const InputDecoration(
                                          hintText: 'Optional',
                                          hintStyle: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30 + MediaQuery.of(context).viewPadding.bottom),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15 + MediaQuery.of(context).viewPadding.bottom,
                left: 0,
                right: 0,
                height: 48,
                child: InkWell(
                  onTap: () {
                    if (state.isLoading) return;

                    context.read<FeedbackBloc>().add(FeedbackEvent.send(feedback));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        const SizedBox(height: 40, child: PrimaryButton(title: 'SUBMIT')),
                        const SizedBox(height: 2),
                        if (state.isLoading) const LinearProgressIndicator(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
