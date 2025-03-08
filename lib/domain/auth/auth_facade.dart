import 'package:dartz/dartz.dart';
import 'auth.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Auth>> getSignedUser();
  Future<Either<AuthFailure, Auth>> signInWithEmailAndPassword(String email, String password);
  Future<Either<AuthFailure, Auth>> registerWithEmailAndPassword(String email, String password);
  Future<Unit> signOut();
}
