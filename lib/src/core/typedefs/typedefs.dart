/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'dart:io';
import 'package:fpdart/fpdart.dart';
import 'package:simple_form_field/errors/app_error.dart';

typedef EitherResponse<T> = Future<Either<AppError, T>>;
typedef EitherFileOrError<T> = Future<Either<String, T>>;
