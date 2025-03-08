import '../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWrapperWidget extends StatelessWidget {
  const HomeWrapperWidget({super.key, required this.title, required this.body});

  final Widget title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(children: [
          // App bar
          Positioned(top: 0, left: 0, right: 0, child: title),
          // Body
          Positioned(
              top: 60, bottom: 60, left: 0, right: 0, child: Container(color: Colors.blueGrey.shade100, child: body)),
          // Bottom menu
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(),
          )
        ]),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final bloc = BlocProvider.of<ButtomNavigationBloc>(context);
    final bloc = context.watch<ButtomNavigationBloc>();
    final page = bloc.state.page;

    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.dashboard)),
            child: BottomNavigationButton(
              label: 'Dashboard',
              icon: Icons.dashboard,
              active: page == NavigationPages.dashboard,
            ),
          ),
          InkWell(
              onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.transaction)),
              child: BottomNavigationButton(
                label: 'History',
                icon: Icons.assignment,
                active: page == NavigationPages.transaction,
              )),
          // InkWell(
          //   onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.main)),
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.green,
          //       boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: .1, blurRadius: 2)],
          //     ),
          //     width: 60,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const [
          //         Icon(Icons.add_box_rounded, size: 38),
          //       ],
          //     ),
          //   ),
          // ),
          InkWell(
              onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.main)),
              child: BottomNavigationButton(
                label: 'Transactions',
                icon: Icons.add_box_rounded,
                active: page == NavigationPages.main,
              )),
          InkWell(
              onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.statistics)),
              child: BottomNavigationButton(
                label: 'Statistics',
                icon: Icons.assessment,
                active: page == NavigationPages.statistics,
              )),
          InkWell(
              onTap: () => bloc.add(const ButtomNavigationEvent.push(NavigationPages.menu)),
              child: BottomNavigationButton(
                label: 'Menu',
                icon: Icons.storage_sharp,
                active: page == NavigationPages.menu,
              )),
        ],
      ),
    );
  }
}

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    super.key,
    required this.label,
    required this.icon,
    this.active = false,
  });

  final String label;
  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          Text(label,
              style: TextStyle(fontSize: 10, color: active ? Colors.white : Theme.of(context).colorScheme.secondary)),
        ],
      ),
    );
  }
}
