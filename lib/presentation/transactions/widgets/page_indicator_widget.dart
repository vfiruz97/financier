import 'package:flutter/material.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({super.key, this.pageCount = 2, this.activePageIndex = 0});

  final int pageCount;
  final int activePageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        children: [
          for (int i = 0; i < pageCount; i++)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: i <= activePageIndex ? Theme.of(context).primaryColor.withOpacity(0.8) : null,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
