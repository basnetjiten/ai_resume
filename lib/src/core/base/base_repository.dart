import 'dart:async';
import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_form_field/errors/api_exception.dart';
import 'package:simple_form_field/errors/app_error.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions.
///
/// Methods should return EitherResponse.
/// {@endtemplate}
class BaseRepository {
  /// BaseRepository is not meant to be used with other than server
  /// (BaseRemoteSource).
  ///
  /// If you need to make http request or use third party plugin that can throw
  /// exception other that NetworkError don't use [BaseRepository].
  BaseRepository();

  /// [T] is Return type for [EitherResponse]
  ///
  /// [R] is response type from server that is params for [onSuccess] callback
  ///
  /// [onSuccess] callback returns the [T] and accept [R]
  ///
  /// This should not be used other that making request to server. Otherwise
  /// you would not be able to handle exceptions properly.
  EitherResponse<T> processApiCall<R, T>({
    required Future<R> call,
    required FutureOr<T> Function(R data) onSuccess,
  }) async {
    try {
      final R data = await call;
      return right(await onSuccess(data));
    } on ApiException catch (e) {
      final AppError appError = e.when(
        serverException: (String message) => AppError.serverError(message: message),
        network: () => const AppError.noInternet(),
      );
      return left(appError);
    } catch(_) {
      return left(const AppError.serverError(message: 'Server Error'));
    }
  }
}
