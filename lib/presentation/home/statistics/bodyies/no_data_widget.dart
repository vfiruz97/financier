import '../../../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      child: WhiteCardWidget(
        child: Center(
          child: Text('No data to display', style: TextStyle(fontSize: 13, color: Colors.black45)),
        ),
      ),
    );
  }
}
