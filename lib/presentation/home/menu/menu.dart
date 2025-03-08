import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../../transactions/expense/dialog/confirm_dialog.dart';
import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Menu');
  }
}

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ButtomNavigationBloc>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            WhiteCardWidget(
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.plan)),
                        child: const ListMenuItemWidget(title: 'Planning', icon: Icons.ballot_outlined)),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.category)),
                        child: const ListMenuItemWidget(
                            title: 'Categories', icon: Icons.account_tree_outlined, bottomBorder: false)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            WhiteCardWidget(
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.budget)),
                        child: const ListMenuItemWidget(title: 'Budgets', icon: Icons.account_balance)),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.account)),
                        child: const ListMenuItemWidget(
                            title: 'Accounts', icon: Icons.account_balance_wallet, bottomBorder: false)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            WhiteCardWidget(
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {},
                        child: const ListMenuItemWidget(title: 'Buy subscription', icon: Icons.beenhere_outlined)),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.settings)),
                        child: const ListMenuItemWidget(title: 'Settings', icon: Icons.settings)),
                  ),
                  const ListMenuItemWidget(title: 'Help', icon: Icons.live_help_sharp),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pushNamed('/about'),
                      child: const ListMenuItemWidget(title: 'About', icon: Icons.info_outline),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pushNamed('/feedback'),
                      child: const ListMenuItemWidget(title: 'Send feedback', icon: Icons.add_to_home_screen),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () async {
                          // show the dialog
                          final bool? response = await ConfirmDialog.show(
                            context,
                            title: 'Confirm log out',
                            message: 'Are you sure you want to logout?',
                          );

                          if (response != null && response) {
                            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.logOut());
                            Navigator.pushReplacementNamed(context, '/');
                          }
                        },
                        child: const ListMenuItemWidget(title: 'Log out', icon: Icons.logout, bottomBorder: false)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListMenuItemWidget extends StatelessWidget {
  const ListMenuItemWidget({super.key, required this.title, required this.icon, this.bottomBorder = true});

  final String title;
  final IconData icon;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 15),
          Text(title, style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}
