import 'package:flutter/material.dart';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';

class ResumeSummaryDetailPage extends StatelessWidget {
  final ResumeSummary summary;

  const ResumeSummaryDetailPage({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(summary.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              summary.summary,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            if (summary.metadata != null) ..._buildMetadataSection(),
            const SizedBox(height: 16),
            Text(
              'Created: ${_formatDate(summary.createdAt)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMetadataSection() {
    return [
      const Text(
        'Metadata:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      ...summary.metadata!.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
          child: Text('${entry.key}: ${entry.value}'),
        );
      }).toList(),
    ];
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
}
