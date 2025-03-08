import 'dart:convert';

class Feedback {
  final max = 5;
  double design = 4.5;
  double features = 4;
  double usability = 5;
  String optional = '';

  String toEncodeJson({String? email}) {
    final Map<String, dynamic> map = {
      'design': design,
      'features': features,
      'usability': usability,
      'optional': optional,
      'email': email,
    };

    return jsonEncode(map);
  }

  @override
  String toString() {
    return toEncodeJson();
  }
}
