class ResumeSummaryData {
  ResumeSummaryData({
    required this.name,
    required this.position,
    required this.experience,
    required this.summary,
    required this.skills,
    required this.uploadDate,
  });

  final String name;
  final String position;
  final String experience;
  final String summary;
  final List<String> skills;
  final String uploadDate;
}
