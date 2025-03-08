import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'message.dart';

@singleton
class MessageNotifier with ChangeNotifier {
  late Message message;

  void notifyError({String? title, String errorMsg = 'Occured unexpected error'}) {
    message = Message.error(title, errorMsg);
    notifyListeners();
  }

  void notifySuccess({String? title, String successMsg = 'Successfully done'}) {
    message = Message.success(title, successMsg);
    notifyListeners();
  }

  void notifyInfo({String? title, required String infoMsg}) {
    message = Message.success(title, infoMsg);
    notifyListeners();
  }

  void notifyWarning({String? title, required String warningMsg}) {
    message = Message.success(title, warningMsg);
    notifyListeners();
  }
}
