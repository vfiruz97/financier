import '../../widgets/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class PlanningEmptyScreen extends StatelessWidget {
  const PlanningEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ballot_outlined, size: 250, color: Colors.grey.withOpacity(.3)),
            Text('Plans list is empty', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 15),
            const Text(
              'Plan your expenses\nto arrange your budget',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 40,
                width: 180,
                child: PrimaryButton(
                  title: 'NEW PLAN',
                  onTap: () {
                    Navigator.pushNamed(context, '/plan-create');
                  },
                )),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
