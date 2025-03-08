import '../../../domain/financier/plan/plan.dart';
import '../../../domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/financier/plan/plan_facade.dart';
import '../../../domain/financier/plan/plan_failure.dart';
import '../../database/daos/plan_dao.dart';
import 'plan_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IPlanFacade)
class PlanFacade implements IPlanFacade {
  final PlansDao plansDao;
  PlanFacade(this.plansDao);

  @override
  Future<Either<PlanFailure, Unit>> create(Plan plan) async {
    try {
      await plansDao.addPlan(PlanDto.fromDomain(plan).toDrift());
      return right(unit);
    } catch (e) {
      return left(const PlanFailure.unexpected());
    }
  }

  @override
  Future<Unit> delete(Plan plan) async {
    await plansDao.deletePlan(PlanDto.fromDomain(plan).toDrift());
    return unit;
  }

  @override
  Future<Option<IList<PlanWithRelationship>>> getAll() async {
    final list = await plansDao.getAll();
    if (list.isEmpty) {
      return none();
    }
    return some(list);
  }

  @override
  Future<Option<PlanWithRelationship>> getById(UniqueId id) async {
    final plan = await plansDao.getById(id.getOrCrash());
    return plan != null ? some(plan) : none();
  }

  @override
  Future<Either<PlanFailure, Unit>> update(Plan plan) async {
    try {
      await plansDao.updatePlan(PlanDto.fromDomain(plan).toDrift());
      return right(unit);
    } catch (e) {
      return left(const PlanFailure.unexpected());
    }
  }
}
