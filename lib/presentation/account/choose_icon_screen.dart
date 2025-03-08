import '../../application/account/account_create/account_create_bloc.dart';
import '../../domain/core/icon_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseIconScreen extends StatelessWidget {
  const ChooseIconScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconId = context.watch<AccountCreateBloc>().state.account.iconAvatar.getOrCrash();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Choose icon',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (int i = 0; i < icons.length; i++)
                  InkWell(
                      onTap: () {
                        BlocProvider.of<AccountCreateBloc>(context).add(AccountCreateEvent.chooseIconId(i));
                      },
                      child: ListAccountIconItem(icon: icons[i], active: i == iconId)),
              ],
            ),
          ),
        ],
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
