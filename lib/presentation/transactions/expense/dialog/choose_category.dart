import '../../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../../infrastructure/database/daos/transaction_category_dao.dart';
import '../../../home/categories/category_empty_screen.dart';
import '../../../home/categories/dialogs/category_create_form_dialog.dart';
import '../../../widgets/components/back_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../injection.dart';

class ChooseCategoryDialog extends StatelessWidget {
  const ChooseCategoryDialog({super.key, required this.onSelect, this.type = TransactionCategoryType.expense});
  final Function(String categoryId) onSelect;
  final TransactionCategoryType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BackAppBar(
              title: 'Choose category',
              actions: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) => CategoryCreateFormDialog(transactionCategoryType: type));
                        },
                        child: const Icon(Icons.add)))
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 60,
            right: 0,
            bottom: 0,
            child: StreamBuilder<List<TransactionCategory>>(
                stream: getIt<TransactionCategoriesDao>().watchAllByType(type.index),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final categories = snapshot.data;
                    if (categories != null && categories.isNotEmpty) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (var category in categories)
                              InkWell(
                                onTap: () {
                                  onSelect(category.id!.getOrCrash());
                                  Navigator.pop(context);
                                },
                                child: ListCategoryItem(
                                  name: category.name.getOrCrash(),
                                  bottomBorder: !(category == categories.last),
                                ),
                              ),
                          ],
                        ),
                      );
                    }
                    return const CategoryEmptyScreen();
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
          ),
        ],
      ),
    );
  }
}

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem({super.key, required this.name, this.bottomBorder = true});

  final String name;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Text(name, style: Theme.of(context).textTheme.titleSmall, overflow: TextOverflow.ellipsis),
    );
  }
}
