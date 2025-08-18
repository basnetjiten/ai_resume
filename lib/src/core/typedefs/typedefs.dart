/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'dart:io';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_form_field/errors/app_error.dart';

// Generic response types
typedef EitherResponse<T> = Future<Either<AppError, T>>;
typedef EitherFileOrError<T> = Future<Either<String, T>>;

// Resume Summary feature type definitions
typedef EitherResumeSummary = Future<Either<AppError, ResumeSummary>>;
typedef EitherResumeSummaryList = Future<Either<AppError, List<ResumeSummary>>>;
typedef EitherVoid = Future<Either<AppError, void>>;

// For API responses
typedef ResumeSummaryListResponse = Future<List<ResumeSummary>>;
typedef ResumeSummaryResponse = Future<ResumeSummary>;

// // For repository method signatures
// typedef GetResumeSummaries = Future<Either<AppError, List<ResumeSummary>>>;
// typedef GetResumeSummary = Future<Either<AppError, ResumeSummary>>;
// typedef CreateResumeSummary = Future<Either<AppError, ResumeSummary>>;
// typedef UpdateResumeSummary = Future<Either<AppError, ResumeSummary>>;
// typedef DeleteResumeSummary = Future<Either<AppError, void>>;
//
// // For data source method signatures
// typedef FetchResumeSummaries = Future<List<ResumeSummary>>;
// typedef FetchResumeSummary = Future<ResumeSummary>;
// typedef PostResumeSummary = Future<ResumeSummary>;
// typedef PutResumeSummary = Future<ResumeSummary>;
// typedef RemoveResumeSummary = Future<void>;
