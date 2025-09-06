// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(error) => "An error occurred: ${error}";

  static String m1(date) => "Uploaded on ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "analyzingCvText": MessageLookupByLibrary.simpleMessage(
      "Analyzing your CV and extracting key information. Our AI is processing your experience, skills, and qualifications to create a comprehensive summary...",
    ),
    "cacheError": MessageLookupByLibrary.simpleMessage(
      "Failed to cache resume data",
    ),
    "cachingResumes": MessageLookupByLibrary.simpleMessage(
      "Caching resume data...",
    ),
    "craftCareerStory": MessageLookupByLibrary.simpleMessage(
      "CRAFT A CAREER STORY",
    ),
    "creatingSummary": MessageLookupByLibrary.simpleMessage(
      "Creating comprehensive summary...",
    ),
    "errorOccurred": m0,
    "extractingKeyInformation": MessageLookupByLibrary.simpleMessage(
      "Extracting key information...",
    ),
    "highlightStrengths": MessageLookupByLibrary.simpleMessage(
      "HIGHLIGHT YOUR STRENGTHS",
    ),
    "identifyGaps": MessageLookupByLibrary.simpleMessage("IDENTIFY GAPS"),
    "justifyExperiences": MessageLookupByLibrary.simpleMessage(
      "JUSTIFY EXPERIENCES",
    ),
    "metadata": MessageLookupByLibrary.simpleMessage("Metadata:"),
    "noDataAvailable": MessageLookupByLibrary.simpleMessage(
      "No data available",
    ),
    "noResume": MessageLookupByLibrary.simpleMessage("No resumes found"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("N/A"),
    "processingExperience": MessageLookupByLibrary.simpleMessage(
      "Processing experience...",
    ),
    "processingQualifications": MessageLookupByLibrary.simpleMessage(
      "Processing qualifications...",
    ),
    "processingSkills": MessageLookupByLibrary.simpleMessage(
      "Processing skills...",
    ),
    "professionalSummary": MessageLookupByLibrary.simpleMessage(
      "Professional Summary",
    ),
    "remove": MessageLookupByLibrary.simpleMessage("Remove"),
    "resumeSummary": MessageLookupByLibrary.simpleMessage("Resume Summary"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "selectFile": MessageLookupByLibrary.simpleMessage("Select File"),
    "showcaseSkills": MessageLookupByLibrary.simpleMessage("SHOWCASE SKILLS"),
    "summarizingCV": MessageLookupByLibrary.simpleMessage(
      "Summarizing your CV...",
    ),
    "totalResumes": MessageLookupByLibrary.simpleMessage("Total Resumes"),
    "uploadInformation": MessageLookupByLibrary.simpleMessage(
      "Upload Information",
    ),
    "uploadedOn": m1,
    "yearsOfExperience": MessageLookupByLibrary.simpleMessage(
      "Years of Experience",
    ),
  };
}
