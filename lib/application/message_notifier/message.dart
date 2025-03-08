enum MessageStatus { error, sucess, info, warning }

class Message {
  final String? title;
  final String body;
  final MessageStatus status;

  Message({
    required this.title,
    required this.body,
    required this.status,
  });

  factory Message.error(String? title, String body) => Message(title: title, body: body, status: MessageStatus.error);

  factory Message.success(String? title, String body) =>
      Message(title: title, body: body, status: MessageStatus.sucess);

  factory Message.info(String? title, String body) => Message(title: title, body: body, status: MessageStatus.info);

  factory Message.warning(String? title, String body) =>
      Message(title: title, body: body, status: MessageStatus.warning);
}
