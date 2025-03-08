import 'package:flutter/material.dart';

class ListSettingsItemWidget extends StatelessWidget {
  const ListSettingsItemWidget(
      {super.key,
      required this.title,
      required this.icon,
      this.bottomBorder = true,
      required this.onTap,
      required this.value});

  final String title;
  final IconData icon;
  final bool bottomBorder;
  final Function() onTap;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
          child: Row(
            children: [
              Icon(icon, color: Theme.of(context).colorScheme.secondary),
              const SizedBox(width: 15),
              Expanded(child: Text(title, maxLines: 2, style: Theme.of(context).textTheme.titleSmall)),
              Container(
                width: 200,
                alignment: Alignment.centerRight,
                child: Text(value,
                    overflow: TextOverflow.ellipsis, maxLines: 2, style: Theme.of(context).textTheme.titleSmall),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
