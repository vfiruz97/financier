import 'package:flutter/material.dart';

import '../../application/message_notifier/message.dart';
import '../../application/message_notifier/message_notifier.dart';

typedef MessageCallback = void Function(Message);

class MessageProvider extends StatefulWidget {
  const MessageProvider({
    super.key,
    required this.messageNotifier,
    this.onSuccess,
    this.onError,
    this.onWarning,
    this.onInfo,
    required this.child,
  });

  final MessageNotifier messageNotifier;
  final MessageCallback? onSuccess;
  final MessageCallback? onError;
  final MessageCallback? onWarning;
  final MessageCallback? onInfo;
  final Widget child;

  @override
  _MessageProviderState createState() => _MessageProviderState();
}

class _MessageProviderState extends State<MessageProvider> {
  @override
  void initState() {
    widget.messageNotifier.addListener(_runNotifyMethod);

    super.initState();
  }

  void _runNotifyMethod() {
    final message = widget.messageNotifier.message;

    switch (message.status) {
      case MessageStatus.error:
        if (widget.onError != null) {
          widget.onError!(message);
        }
        break;
      case MessageStatus.sucess:
        if (widget.onSuccess != null) {
          widget.onSuccess!(message);
        }
        break;
      case MessageStatus.warning:
        if (widget.onWarning != null) {
          widget.onWarning!(message);
        }
        break;
      case MessageStatus.info:
        if (widget.onInfo != null) {
          widget.onInfo!(message);
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.messageNotifier.removeListener(_runNotifyMethod);
    super.dispose();
  }
}
