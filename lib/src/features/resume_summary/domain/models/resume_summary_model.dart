import 'package:equatable/equatable.dart';

class ResumeSummary extends Equatable {
  final String id;
  final String title;
  final String summary;
  final DateTime createdAt;
  final Map<String, dynamic>? metadata;

  const ResumeSummary({
    required this.id,
    required this.title,
    required this.summary,
    required this.createdAt,
    this.metadata,
  });

  @override
  List<Object?> get props => [id, title, summary, createdAt, metadata];

  ResumeSummary copyWith({
    String? id,
    String? title,
    String? summary,
    DateTime? createdAt,
    Map<String, dynamic>? metadata,
  }) {
    return ResumeSummary(
      id: id ?? this.id,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      createdAt: createdAt ?? this.createdAt,
      metadata: metadata ?? this.metadata,
    );
  }
}
