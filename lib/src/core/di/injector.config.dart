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
import 'package:ai_resume/src/features/resume_library/presentation/blocs/resume_library_cubit.dart'
    as _i117;
import 'package:ai_resume/src/features/resume_summary/data/datasources/resume_library_local_data_source.dart'
    as _i1047;
import 'package:ai_resume/src/features/resume_summary/data/datasources/resume_summary_remote_data_source.dart'
    as _i879;
import 'package:ai_resume/src/features/resume_summary/data/repositories/resume_summary_repository_impl.dart'
    as _i940;
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart'
    as _i895;
import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_cubit.dart'
    as _i580;
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
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
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
    () => registerModules.dio(gh<_i444.AuthInterceptor>()),
  );
  gh.singleton<_i879.ResumeSummaryRemoteDataSource>(
    () => _i879.ResumeSummaryRemoteDataSourceImpl(gh<_i361.Dio>()),
  );
  gh.singleton<_i918.ResumeFileRepository>(
    () => _i618.ResumeFileRepoImpl(gh<_i403.FilePickerService>()),
  );
  gh.singleton<_i1047.ResumeLibraryLocalDataSource>(
    () => _i1047.ResumeLibraryLocalDataSourceImpl(gh<_i920.LocalStorage>()),
  );
  gh.factory<_i71.ResumePickerCubit>(
    () => _i71.ResumePickerCubit(gh<_i918.ResumeFileRepository>()),
  );
  gh.singleton<_i895.ResumeSummaryRepository>(
    () => _i940.ResumeSummaryRepositoryImpl(
      gh<_i879.ResumeSummaryRemoteDataSource>(),
      gh<_i1047.ResumeLibraryLocalDataSource>(),
    ),
  );
  gh.factory<_i117.ResumeLibraryCubit>(
    () => _i117.ResumeLibraryCubit(gh<_i895.ResumeSummaryRepository>()),
  );
  gh.factory<_i580.ResumeSummaryCubit>(
    () => _i580.ResumeSummaryCubit(gh<_i895.ResumeSummaryRepository>()),
  );
  return getIt;
}

class _$RegisterModules extends _i506.RegisterModules {}
