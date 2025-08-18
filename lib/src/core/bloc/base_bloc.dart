import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState);

  Future<void> handleApiCall<T>({
    required Future<Either<Exception, T>> apiCall,
    required Function(T data) onSuccess,
    Function(Exception error)? onError,
    Function()? onLoading,
  }) async {
    onLoading?.call();
    
    final result = await apiCall;
    
    result.fold(
      (error) {
        onError?.call(error);
      },
      (data) {
        onSuccess(data);
      },
    );
  }
}

abstract class BaseState extends Equatable {
  final String? error;
  final bool isLoading;
  final bool hasError;

  const BaseState({
    this.error,
    this.isLoading = false,
    this.hasError = false,
  });

  @override
  List<Object?> get props => [error, isLoading, hasError];
}
