// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_resume/src/app/presentation/blocs/app_cubit/app_cubit.dart'
    as _i326;
import 'package:ai_resume/src/core/di/register_modules.dart' as _i506;
import 'package:ai_resume/src/core/network/auth_interceptor.dart' as _i444;
import 'package:ai_resume/src/core/routes/app_router.dart' as _i614;
import 'package:ai_resume/src/core/services/file_picker_service.dart' as _i403;
import 'package:ai_resume/src/features/resume_analyzer/data/repositories/resume_file_repo_impl.dart'
    as _i618;
import 'package:ai_resume/src/features/resume_analyzer/domain/repositories/resume_file_repo.dart'
    as _i918;
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart'
    as _i71;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_local_storage/hive_local_storage.dart' as _i920;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModules = _$RegisterModules();
  gh.factory<_i326.AppCubit>(() => _i326.AppCubit());
  await gh.singletonAsync<_i920.LocalStorage>(
    () => registerModules.storage,
    preResolve: true,
  );
  gh.singleton<_i614.AppRouter>(() => _i614.AppRouter());
  gh.singleton<_i403.FilePickerService>(() => _i403.FilePickerService());
  gh.lazySingleton<_i444.AuthInterceptor>(() => _i444.AuthInterceptor());
  gh.lazySingleton<_i361.Dio>(
      () => registerModules.dio(gh<_i444.AuthInterceptor>()));
  gh.singleton<_i918.ResumeFileRepository>(
      () => _i618.ResumeFileRepoImpl(gh<_i403.FilePickerService>()));
  gh.factory<_i71.ResumePickerCubit>(
      () => _i71.ResumePickerCubit(gh<_i918.ResumeFileRepository>()));
  return getIt;
}

class _$RegisterModules extends _i506.RegisterModules {}
