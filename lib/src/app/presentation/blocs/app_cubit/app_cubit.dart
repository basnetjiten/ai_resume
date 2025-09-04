import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

/// This cubit is initialized at the app's entry point and listens for session changes.
///
/// - Checks for session expiry
/// - Manages authentication state
/// - Provides global redirection logic based on user authentication
@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial()) {
    // Initialize with a small delay to ensure proper widget tree initialization
    //Later this will be a proper session check (e.g., checking token validity)
    Future<void>.delayed(const Duration(milliseconds: 50), checkAuthStatus);
  }

  /// Checks the current authentication status and updates the state accordingly
  Future<void> checkAuthStatus() async {
    try {
      // TODO: Jiten: Implement actual authorization later
      emit(const AppState.authenticated());
    } catch (e) {
      emit(const AppState.unAuthenticated());
    } finally {
      // Remove the splash screen after auth check is complete
      FlutterNativeSplash.remove();
    }
  }
}
