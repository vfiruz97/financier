import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarHelper {
  static Future<void> showValidationError(
    BuildContext context, {
    String? title,
    required String message,
  }) async {
    Flushbar(
      title: title,
      titleColor: Colors.white,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      // reverseAnimationCurve: Curves.decelerate,
      // forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: Colors.black38,
      // boxShadows: [
      //   BoxShadow(
      //     color: Theme.of(context).colorScheme.secondary,
      //     offset: const Offset(0.0, 2.0),
      //     blurRadius: 3.0,
      //   ),
      // ],
      // backgroundGradient: const LinearGradient(
      //   colors: [
      //     Colors.black,
      //     Colors.black,
      //   ],
      // ),
      icon: Icon(
        Icons.info_outline,
        size: 28.0,
        color: Theme.of(context).colorScheme.secondary,
      ),
      isDismissible: false,
      duration: const Duration(seconds: 4),
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: Theme.of(context).colorScheme.secondary,
      titleText: title != null
          ? Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
            )
          : null,
      messageText: Text(
        message,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ).show(context);
  }
}
