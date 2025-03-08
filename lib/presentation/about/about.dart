import '../../application/message_notifier/message_notifier.dart';
import '../../injection.dart';
import '../widgets/components/buttons/primary_button.dart';
import '../widgets/message_provider.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const _AboutBody(),
    );
  }
}

class _AboutBody extends StatelessWidget {
  const _AboutBody();

  @override
  Widget build(BuildContext context) {
    return MessageProvider(
      messageNotifier: getIt<MessageNotifier>(),
      onSuccess: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.body))),
      onError: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.body))),
      child: Builder(builder: (context) {
        return Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: PrimaryButton(
                  title: 'emit success',
                  onTap: () {
                    getIt<MessageNotifier>().notifySuccess(successMsg: 'Success');
                  },
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 60,
                child: PrimaryButton(
                  title: 'emit error',
                  onTap: () {
                    getIt<MessageNotifier>().notifyError(errorMsg: 'Error');
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
