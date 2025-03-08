import '../../application/plan/plan_create/plan_create_bloc.dart';
import '../../injection.dart';
import 'create/choose_arrange_date.dart';
import 'create/set_amount.dart';
import '../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create/choose_account.dart';

class PlanCreateScreen extends StatelessWidget {
  const PlanCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PlanCreateBloc>(),
      child: const PlanCreateBody(),
    );
  }
}

class PlanCreateBody extends StatefulWidget {
  const PlanCreateBody({super.key});

  @override
  State<PlanCreateBody> createState() => _PlanCreateScreenState();
}

class _PlanCreateScreenState extends State<PlanCreateBody> {
  final PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(children: [
          // App bar
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HomeAppBarWidget(
                  title: 'Create new Plan',
                  actions: [InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close))])),
          // Body
          Positioned(
            top: 60,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blueGrey.shade100,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ChooseArrangeDate(pageController: controller),
                  ChooseCurrency(pageController: controller),
                  SetAmount(pageController: controller),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
