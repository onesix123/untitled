import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/authentication/auth_repository.dart';
import '../../domain/authenticatioin/register_form.dart';
import '../../utils/app_logger.dart';

part 'auth_use_case.g.dart';

@riverpod
Future<void> loginUseCase(
  LoginUseCaseRef ref, {
  required String email,
  required String password,
}) async {
  logger.d('Execute loginUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.login(email: email, password: password);
}

@riverpod
Future<void> registerUseCase(RegisterUseCaseRef ref,
    {required RegisterForm form}) async {
  logger.d('Execute registerUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.register(form: form);
}

@riverpod
Future<void> requestRegisterAuthCodeUseCase(
  RequestRegisterAuthCodeUseCaseRef ref, {
  required String email,
}) async {
  logger.d('Execute requestRegisterAuthCodeUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.requestRegisterAuthCode(email: email);
}

@riverpod
Future<void> verifyRegisterAuthCodeUseCase(
  VerifyRegisterAuthCodeUseCaseRef ref, {
  required String email,
  required String authCode,
}) async {
  logger.d('Execute verifyRegisterAuthCodeUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.verifyRegisterAuthCode(email: email, authCode: authCode);
}

@riverpod
Future<void> requestPasswordUpdateAuthCodeUseCase(
  RequestPasswordUpdateAuthCodeUseCaseRef ref, {
  required String email,
}) async {
  logger.d('Execute requestPasswordUpdateAuthCodeUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.requestPasswordUpdateAuthCode(email: email);
}

@riverpod
Future<void> verifyPasswordUpdateAuthCodeUseCase(
  VerifyPasswordUpdateAuthCodeUseCaseRef ref, {
  required String email,
  required String authCode,
}) async {
  logger.d('Execute verifyPasswordUpdateAuthCodeUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.verifyPasswordUpdateAuthCode(email: email, authCode: authCode);
}

@riverpod
Future<void> updatePasswordUseCase(
  UpdatePasswordUseCaseRef ref, {
  required String email,
  required String password,
  required String passwordConfirm,
}) async {
  logger.d('Execute updatePasswordUseCase');
  final authRepo = ref.watch(authRepositoryProvider);
  await authRepo.updatePassword(
    email: email,
    password: password,
    passwordConfirmation: passwordConfirm,
  );
}
