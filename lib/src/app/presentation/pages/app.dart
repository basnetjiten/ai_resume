import 'package:ai_resume/src/app/presentation/blocs/app_cubit/app_cubit.dart';
import 'package:ai_resume/src/app/presentation/pages/global_bloc_provider.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/core/routes/app_router.dart';
import 'package:ai_resume/localization/arb/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return GlobalBlocProvider(
      child: BlocListener<AppCubit, AppState>(
        listener: (BuildContext _, AppState state) {
          state.when(
            initial: () {
              // _routePage(route: const CVUploadRoute());
            },
            unAuthenticated: () {
              //_routePage(route: const LoginRoute());
            },
            authenticated: () {
              //_routePage(route: const CVUploadRoute());
            },
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          localizationsDelegates: const <LocalizationsDelegate>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[Locale('en')],
          locale: const Locale('en'),
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          builder: (BuildContext context, Widget? child) {
            //  ErrorWidget.builder = (FlutterErrorDetails details) => AppErrorWidget(details: details);
            return child!;
          },
        ),
      ),
    );
  }
}
