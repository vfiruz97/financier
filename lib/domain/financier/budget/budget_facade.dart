import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';

import 'budget.dart';
import 'budget_failure.dart';

abstract class IBudgetFacade {
  Future<Either<BudgetFailure, Unit>> create(Budget budget);
  Future<Either<BudgetFailure, Unit>> update(Budget budget);
  Future<Option<BudgetWithRelationship>> getById(UniqueId id);
  Future<Option<IList<BudgetWithRelationship>>> getAll();
  Future<Unit> delete(Budget budget);
}
