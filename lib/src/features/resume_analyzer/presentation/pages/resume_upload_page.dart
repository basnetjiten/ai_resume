import 'dart:io';
import 'dart:math' as math;
import 'package:ai_resume/src/app/presentation/pages/app.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/upload_file_widget.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/analyzed_resumes_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class ResumeUploadPage extends StatefulWidget {
  const ResumeUploadPage({super.key});

  @override
  _ResumeUploadPageState createState() => _ResumeUploadPageState();
}

class _ResumeUploadPageState extends State<ResumeUploadPage> with TickerProviderStateMixin {
  File? selectedFile;
  bool isUploading = false;

  late AnimationController _cardAnimationController;
  late AnimationController _particleAnimationController;
  late Animation<double> _cardScaleAnimation;
  late Animation<double> _particleAnimation;

  late ResumePickerCubit _resumePickerCubit;

  @override
  void initState() {
    super.initState();
    _resumePickerCubit = getIt<ResumePickerCubit>();
    _cardAnimationController = AnimationController(duration: Duration(milliseconds: 800), vsync: this);
    _particleAnimationController = AnimationController(duration: Duration(seconds: 10), vsync: this)..repeat();

    _cardScaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _cardAnimationController, curve: Curves.elasticOut));

    _particleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_particleAnimationController);

    _cardAnimationController.forward();
  }

  @override
  void dispose() {
    _cardAnimationController.dispose();
    _particleAnimationController.dispose();
    super.dispose();
  }

  void _navigateToListings() {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
            const AnalyzedResumesPage(),
        transitionsBuilder:
            (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
                child: child,
              );
            },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BlocProvider<ResumePickerCubit>(
          create: (BuildContext context) => _resumePickerCubit,
          child: BlocListener<ResumePickerCubit, ResumePickerState>(
            bloc: _resumePickerCubit,
            listener: (_, ResumePickerState state) {
              state.status.maybeWhen(
                success: (String? data) {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder:
                          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
                              CVAnalysisScreen(fileName: state.fileName!),
                      transitionsBuilder:
                          (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            child,
                          ) {
                            return FadeTransition(opacity: animation, child: child);
                          },
                    ),
                  );
                  _resumePickerCubit.resetFile();
                },
                error: (String? error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$error', style: GoogleFonts.poppins()),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Upload Your Resume',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF6A11CB), Color(0xFF2575FC)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.list, color: Colors.white),
                    onPressed: _navigateToListings,
                    tooltip: 'View All CVs',
                  ),
                ],
              ),
              body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Color(0xFF6A11CB), Color(0xFF2575FC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [
                    AnimatedBuilder(
                      animation: _particleAnimation,
                      builder: (BuildContext context, Widget? child) {
                        return CustomPaint(painter: ParticlePainter(_particleAnimation.value), size: Size.infinite);
                      },
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 100),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              DefaultTextStyle(
                                style: const TextStyle(fontSize: 21.0, fontWeight: FontWeight.w700, fontFamily: 'Horizon'),
                                child: AnimatedTextKit(
                                  pause: const Duration(milliseconds: 100),
                                  repeatForever: true,
                                  animatedTexts: [
                                    RotateAnimatedText('HIGHLIGHT YOUR STRENGTHS'),
                                    RotateAnimatedText('IDENTIFY GAPS'),
                                    RotateAnimatedText('JUSTIFY EXPERIENCES'),
                                    RotateAnimatedText('SHOWCASE SKILLS'),
                                    RotateAnimatedText('CRAFT A CAREER STORY'),
                                  ],
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 50),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: AnimatedBuilder(
                              animation: _cardScaleAnimation,
                              builder: (BuildContext context, Widget? child) {
                                return Transform.scale(scale: _cardScaleAnimation.value, child: const UploadFileWidget());
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ParticlePainter extends CustomPainter {
  ParticlePainter(this.animationValue) : particles = _generateParticles();
  final double animationValue;
  final List<Particle> particles;

  static List<Particle> _generateParticles() {
    final math.Random random = math.Random();
    return List<Particle>.generate(50, (int index) {
      return Particle(
        x: random.nextDouble(),
        y: random.nextDouble(),
        size: random.nextDouble() * 4 + 1,
        speed: random.nextDouble() * 0.5 + 0.1,
      );
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    for (final Particle particle in particles) {
      final double x = (particle.x + animationValue * particle.speed) % 1.0 * size.width;
      final double y = particle.y * size.height;
      canvas.drawCircle(Offset(x, y), particle.size, paint);
    }
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}

class Particle {
  Particle({required this.x, required this.y, required this.size, required this.speed});

  final double x;
  final double y;
  final double size;
  final double speed;
}
