import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';
import 'plan_failure.dart';

import 'plan.dart';

abstract class IPlanFacade {
  Future<Either<PlanFailure, Unit>> create(Plan plan);
  Future<Either<PlanFailure, Unit>> update(Plan plan);
  Future<Option<PlanWithRelationship>> getById(UniqueId id);
  Future<Option<IList<PlanWithRelationship>>> getAll();
  Future<Unit> delete(Plan plan);
}
