import 'package:ai_resume/src/app/presentation/pages/app.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_cubit.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class CVSumarryPage extends StatefulWidget {
  @override
  _CVSumarryPageState createState() => _CVSumarryPageState();
}

class _CVSumarryPageState extends State<CVSumarryPage>
    with TickerProviderStateMixin {
  late AnimationController _staggerController;
  final List<CVCategory> categories = [
    CVCategory(
      title: 'Professional Summary',
      items: [
        'Senior Software Developer with 5+ years experience',
        'Expert in Flutter and React Native development',
        'Strong background in mobile app architecture',
        'Led teams of 8+ developers successfully',
      ],
    ),
    CVCategory(
      title: 'Technical Skills',
      items: [
        'Flutter & Dart',
        'React Native & JavaScript',
        'Firebase & AWS',
        'RESTful APIs & GraphQL',
        'Git & DevOps',
      ],
    ),
    CVCategory(
      title: 'Key Achievements',
      items: [
        'Built 20+ mobile applications',
        'Increased app performance by 40%',
        'Reduced development time by 30%',
        'Published apps with 1M+ downloads',
      ],
    ),
    CVCategory(
      title: 'Education & Certifications',
      items: [
        'Bachelor of Computer Science',
        'AWS Certified Developer',
        'Google Flutter Certified',
        'Agile & Scrum Master Certified',
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _staggerController = AnimationController(
      duration: Duration(milliseconds: 1200),
      vsync: this,
    );
    _staggerController.forward();
  }

  @override
  void dispose() {
    _staggerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV Summary',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 1));
          },
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _staggerController,
                builder: (context, child) {
                  final animationValue = Interval(
                    (index * 0.2).clamp(0.0, 1.0),
                    ((index * 0.2) + 0.4).clamp(0.0, 1.0),
                    curve: Curves.easeOutBack,
                  ).transform(_staggerController.value);

                  return Transform.translate(
                    offset: Offset(0, 50 * (1 - animationValue)),
                    child: Opacity(
                      opacity: animationValue.clamp(0.0, 1.0),
                      child: _buildCategoryCard(categories[index], index),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(CVCategory category, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category.title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ...category.items.asMap().entries.map((entry) {
              return TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 800 + (entry.key * 100)),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(20 * (1 - value), 0),
                    child: Opacity(
                      opacity: value.clamp(0.0, 1.0),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 6, right: 12),
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                entry.value,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.9),
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

