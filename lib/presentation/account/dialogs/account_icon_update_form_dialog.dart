import '../../../application/account/account_update/account_update_bloc.dart';
import '../../../domain/core/icon_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountIconUpdateFormDialog extends StatelessWidget {
  const AccountIconUpdateFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final iconId = context.watch<AccountUpdateBloc>().state.accountBlack.iconAvatar.getOrElse(1);
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Choose account icon', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  for (int i = 0; i < icons.length; i++)
                    InkWell(
                        onTap: () {
                          BlocProvider.of<AccountUpdateBloc>(context)
                            ..add(AccountUpdateEvent.chooseIconId(i))
                            ..add(const AccountUpdateEvent.save());
                        },
                        child: ListAccountIconItem(icon: icons[i], active: i == iconId)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListAccountIconItem extends StatelessWidget {
  const ListAccountIconItem({super.key, required this.icon, this.active = false});

  final IconData icon;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(border: Border.all(), color: active ? Colors.black26 : Colors.black12),
      child: Icon(icon, size: 40),
    );
  }
}
