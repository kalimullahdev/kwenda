import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String email,
    required String password,
  }) = _User;
}
