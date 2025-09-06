// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `No resumes found`
  String get noResume {
    return Intl.message(
      'No resumes found',
      name: 'noResume',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred: {error}`
  String errorOccurred(Object error) {
    return Intl.message(
      'An error occurred: $error',
      name: 'errorOccurred',
      desc: '',
      args: [error],
    );
  }

  /// `No data available`
  String get noDataAvailable {
    return Intl.message(
      'No data available',
      name: 'noDataAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Metadata:`
  String get metadata {
    return Intl.message('Metadata:', name: 'metadata', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Select File`
  String get selectFile {
    return Intl.message('Select File', name: 'selectFile', desc: '', args: []);
  }

  /// `Remove`
  String get remove {
    return Intl.message('Remove', name: 'remove', desc: '', args: []);
  }

  /// `HIGHLIGHT YOUR STRENGTHS`
  String get highlightStrengths {
    return Intl.message(
      'HIGHLIGHT YOUR STRENGTHS',
      name: 'highlightStrengths',
      desc: '',
      args: [],
    );
  }

  /// `IDENTIFY GAPS`
  String get identifyGaps {
    return Intl.message(
      'IDENTIFY GAPS',
      name: 'identifyGaps',
      desc: '',
      args: [],
    );
  }

  /// `JUSTIFY EXPERIENCES`
  String get justifyExperiences {
    return Intl.message(
      'JUSTIFY EXPERIENCES',
      name: 'justifyExperiences',
      desc: '',
      args: [],
    );
  }

  /// `SHOWCASE SKILLS`
  String get showcaseSkills {
    return Intl.message(
      'SHOWCASE SKILLS',
      name: 'showcaseSkills',
      desc: '',
      args: [],
    );
  }

  /// `CRAFT A CAREER STORY`
  String get craftCareerStory {
    return Intl.message(
      'CRAFT A CAREER STORY',
      name: 'craftCareerStory',
      desc: '',
      args: [],
    );
  }

  /// `Total Resumes`
  String get totalResumes {
    return Intl.message(
      'Total Resumes',
      name: 'totalResumes',
      desc: '',
      args: [],
    );
  }

  /// `Professional Summary`
  String get professionalSummary {
    return Intl.message(
      'Professional Summary',
      name: 'professionalSummary',
      desc: '',
      args: [],
    );
  }

  /// `Upload Information`
  String get uploadInformation {
    return Intl.message(
      'Upload Information',
      name: 'uploadInformation',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded on {date}`
  String uploadedOn(Object date) {
    return Intl.message(
      'Uploaded on $date',
      name: 'uploadedOn',
      desc: '',
      args: [date],
    );
  }

  /// `Years of Experience`
  String get yearsOfExperience {
    return Intl.message(
      'Years of Experience',
      name: 'yearsOfExperience',
      desc: '',
      args: [],
    );
  }

  /// `Analyzing your CV and extracting key information. Our AI is processing your experience, skills, and qualifications to create a comprehensive summary...`
  String get analyzingCvText {
    return Intl.message(
      'Analyzing your CV and extracting key information. Our AI is processing your experience, skills, and qualifications to create a comprehensive summary...',
      name: 'analyzingCvText',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get notAvailable {
    return Intl.message('N/A', name: 'notAvailable', desc: '', args: []);
  }

  /// `Summarizing your CV...`
  String get summarizingCV {
    return Intl.message(
      'Summarizing your CV...',
      name: 'summarizingCV',
      desc: '',
      args: [],
    );
  }

  /// `Extracting key information...`
  String get extractingKeyInformation {
    return Intl.message(
      'Extracting key information...',
      name: 'extractingKeyInformation',
      desc: '',
      args: [],
    );
  }

  /// `Processing experience...`
  String get processingExperience {
    return Intl.message(
      'Processing experience...',
      name: 'processingExperience',
      desc: '',
      args: [],
    );
  }

  /// `Processing skills...`
  String get processingSkills {
    return Intl.message(
      'Processing skills...',
      name: 'processingSkills',
      desc: '',
      args: [],
    );
  }

  /// `Processing qualifications...`
  String get processingQualifications {
    return Intl.message(
      'Processing qualifications...',
      name: 'processingQualifications',
      desc: '',
      args: [],
    );
  }

  /// `Creating comprehensive summary...`
  String get creatingSummary {
    return Intl.message(
      'Creating comprehensive summary...',
      name: 'creatingSummary',
      desc: '',
      args: [],
    );
  }

  /// `Caching resume data...`
  String get cachingResumes {
    return Intl.message(
      'Caching resume data...',
      name: 'cachingResumes',
      desc: '',
      args: [],
    );
  }

  /// `Failed to cache resume data`
  String get cacheError {
    return Intl.message(
      'Failed to cache resume data',
      name: 'cacheError',
      desc: '',
      args: [],
    );
  }

  /// `Resume Summary`
  String get resumeSummary {
    return Intl.message(
      'Resume Summary',
      name: 'resumeSummary',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
