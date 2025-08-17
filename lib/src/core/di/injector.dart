/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
    initializerName: r'$initGetIt',
    asExtension: false,
    preferRelativeImports: false)

Future<void> configureInjection() async=> $initGetIt(getIt);
