import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kwenda/domain/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:kwenda/repository/auth/firebase_auth.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final FirebaseAuthRepo _firebaseAuthRepo;

  factory SignInFormBloc(FirebaseAuthRepo _firebaseAuthRepo) {
    print("SignInFormBloc Object created");
    return SignInFormBloc._(_firebaseAuthRepo);
  }

  SignInFormBloc._(this._firebaseAuthRepo) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      signInWithEmailAndPasswordPressed: (value) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        Option<Either<AuthFailure, Unit>> failureOrSuccessOption;
        failureOrSuccessOption = none();

        failureOrSuccessOption =
            optionOf(await _firebaseAuthRepo.signInWithEmailAndPassword(
          emailAddress: value.email,
          password: value.password,
        ));

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: failureOrSuccessOption,
        );
      },
      changeShowErrorMessage: (value) async* {
        yield state.copyWith(
          showErrors: value.showMessages,
        );
      },
    );
  }
}
