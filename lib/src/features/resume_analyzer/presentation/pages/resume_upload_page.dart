import 'dart:io';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/core/routes/app_router.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/upload_file_widget.dart';
import 'package:ai_resume/src/theme/app_colors.dart';
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
    _cardAnimationController = AnimationController(duration: const Duration(milliseconds: 800), vsync: this);
    _particleAnimationController = AnimationController(duration: const Duration(seconds: 10), vsync: this)..repeat();

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
    context.router.push(const AnalyzedResumesRoute());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResumePickerCubit, ResumePickerState>(
      bloc: _resumePickerCubit,
      listener: (_, ResumePickerState state) {
        state.status.maybeWhen(
          success: (String? data) {
            context.router.push(ResumeAnalyzingRoute(fileName: state.fileName!));
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
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[AppColors.primary, AppColors.secondary],
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
              colors: <Color>[AppColors.primary, AppColors.secondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
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
                      return Transform.scale(
                        scale: _cardScaleAnimation.value,
                        child: BlocProvider.value(value: _resumePickerCubit, child: const UploadFileWidget()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

