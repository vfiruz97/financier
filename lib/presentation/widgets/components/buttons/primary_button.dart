import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title, this.onTap});
  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(color: Theme.of(context).primaryColor.withOpacity(0.4), blurRadius: 1, spreadRadius: 1)
            ]),
        child: Center(
            child: Text(title,
                style:
                    Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary))),
      ),
    );
  }
}
