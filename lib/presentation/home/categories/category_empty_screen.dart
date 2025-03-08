import 'package:flutter/material.dart';

class CategoryEmptyScreen extends StatelessWidget {
  const CategoryEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_tree_outlined, size: 250, color: Colors.grey.withOpacity(.3)),
            Text('Category list is empty', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 15),
            const Text(
              'You have not created\nany categories yet',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
