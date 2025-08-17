/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'package:fpdart/fpdart.dart';
import 'package:simple_form_field/errors/app_error.dart';

typedef EitherResponse<T> = Future<Either<AppError, T>>;
