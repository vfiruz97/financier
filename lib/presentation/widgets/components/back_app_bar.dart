import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({super.key, required this.title, this.actions, this.onBack});

  final String title;
  final List<Widget>? actions;
  final Function? onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          const SizedBox(width: 10),
          InkWell(
              onTap: () => onBack != null ? onBack!() : Navigator.pop(context),
              child: Icon(Icons.chevron_left, size: 30, color: Theme.of(context).colorScheme.secondary)),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          if (actions != null) Row(mainAxisSize: MainAxisSize.min, children: actions!)
        ],
      ),
    );
  }
}
