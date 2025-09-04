import 'package:ai_resume/src/app/presentation/blocs/app_cubit/app_cubit.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(_) => MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<AppCubit>(create: (_) => getIt<AppCubit>()),
          // All other long lived blocs are added here
        ],
        child: child,
      );
}
