import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:kwenda/domain/auth_failure.dart';

class FirebaseAuthRepo {
  final FirebaseAuth _firebaseAuth;

  factory FirebaseAuthRepo(FirebaseAuth _firebaseAuth) {
    print("FirebaseAuthRepo Object created");
    return FirebaseAuthRepo._(_firebaseAuth);
  }

  const FirebaseAuthRepo._(this._firebaseAuth);

  @override
  Future<Option<String>> getSignedInUser() async {
    final String? uid = _firebaseAuth.currentUser?.uid;
    return optionOf(uid);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
      ]);
}
