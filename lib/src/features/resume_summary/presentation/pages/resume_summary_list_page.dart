// import 'package:ai_resume/src/core/di/injector.dart';
// import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_cubit.dart';
// import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'resume_summary_detail_page.dart';
//
// class ResumeSummaryListPage extends StatefulWidget {
//   const ResumeSummaryListPage({super.key});
//
//   @override
//   State<ResumeSummaryListPage> createState() => _ResumeSummaryListPageState();
// }
//
// class _ResumeSummaryListPageState extends State<ResumeSummaryListPage> {
//
//   @override
// /* <<<<<<<<<<<<<<  ✨ Windsurf Command ⭐ >>>>>>>>>>>>>>>> */
//
//   /// Initializes the state of the widget.
//   ///
//   /// This method is called immediately after the widget is created.
//   /// It calls the `initState` method of the superclass.
// /* <<<<<<<<<<  35068134-96dd-40a5-a998-f1a4d3e3ea3a  >>>>>>>>>>> */
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ResumeSummaryCubit>(
//       create: (_) => getIt<ResumeSummaryCubit>(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Resume Summaries'),
//         ),
//         body: BlocConsumer<ResumeSummaryCubit, ResumeSummaryState>(
//           listener: (context, state) {
//             state.status.maybeWhen(
//               error: (error) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(error ?? 'An error occurred')),
//                 );
//               },
//               orElse: () {},
//             );
//           },
//           builder: (context, state) {
//             return state.status.maybeWhen(
//               initial: () =>
//               const Center(child: Text('Pull to refresh to load summaries')),
//               submitting: () =>
//               const Center(child: CircularProgressIndicator()),
//               success: (data) {
//                 final summaries = state.summaries;
//                 if (summaries.isEmpty) {
//                   return const Center(
//                       child: Text('No resume summaries available'));
//                 }
//
//                 return RefreshIndicator(
//                   onRefresh: () =>
//                       context
//                           .read<ResumeSummaryCubit>()
//                       .onLoadResumeSummaries(),
//                   child: ListView.builder(
//                     itemCount: summaries.length,
//                     itemBuilder: (context, index) {
//                       final summary = summaries[index];
//                       return ListTile(
//                         title: Text(summary.title),
//                         subtitle: Text(
//                           summary.summary,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   ResumeSummaryDetailPage(summary: summary),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 );
//               },
//               error: (error) =>
//                   Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(error ?? 'Failed to load summaries'),
//                         const SizedBox(height: 16),
//                         ElevatedButton(
//                           onPressed: () =>
//                               context
//                                   .read<ResumeSummaryCubit>()
//                                   .onLoadResumeSummaries(),
//                           child: const Text('Retry'),
//                         ),
//                       ],
//                     ),
//                   ),
//               orElse: () => const Center(child: CircularProgressIndicator()),
//             );
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () =>
//               context.read<ResumeSummaryCubit>().onLoadResumeSummaries(),
//           child: const Icon(Icons.refresh),
//         ),
//       ),
//     );
//   }
// }
