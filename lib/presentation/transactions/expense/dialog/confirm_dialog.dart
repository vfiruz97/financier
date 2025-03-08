import 'package:flutter/material.dart';

class ConfirmDialog {
  static Future<bool?> show(
    BuildContext context, {
    required String title,
    required String message,
    String yesText = 'Yes',
    String noText = 'No',
  }) async {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        yesText,
        style: const TextStyle(letterSpacing: .5),
      ),
      onPressed: () => Navigator.pop(context, true),
    );

    Widget noButton = TextButton(
      child: Text(
        noText,
        style: const TextStyle(letterSpacing: .5),
      ),
      onPressed: () => Navigator.pop(context, false),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [noButton, okButton],
    );

    final bool? response = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
    return response;
  }
}
