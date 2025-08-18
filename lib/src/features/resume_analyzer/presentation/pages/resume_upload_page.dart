import 'dart:io';
import 'dart:async';
import 'package:ai_resume/src/app/presentation/pages/app.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
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

class _ResumeUploadPageState extends State<ResumeUploadPage>
    with TickerProviderStateMixin {
  File? selectedFile;
  bool isUploading = false;
  double uploadProgress = 0.0;
  late AnimationController _cardAnimationController;
  late AnimationController _particleAnimationController;
  late Animation<double> _cardScaleAnimation;
  late Animation<double> _particleAnimation;

  late ResumePickerCubit _resumePickerCubit;

  @override
  void initState() {
    super.initState();
    _resumePickerCubit = getIt<ResumePickerCubit>();
    _cardAnimationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _particleAnimationController = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat();

    _cardScaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _cardAnimationController,
      curve: Curves.elasticOut,
    ));

    _particleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_particleAnimationController);

    _cardAnimationController.forward();
  }

  @override
  void dispose() {
    _cardAnimationController.dispose();
    _particleAnimationController.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    _resumePickerCubit.selectedPdfFile();
    // _startUpload();
  }

  void _startUpload() async {
    setState(() {
      isUploading = true;
      uploadProgress = 0.0;
    });

    // Simulate upload progress
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        uploadProgress += 0.02;
      });

      if (uploadProgress >= 1.0) {
        timer.cancel();
        _navigateToAnalysis();
      }
    });
  }

  void _navigateToAnalysis() {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CVAnalysisScreen(fileName: selectedFile!.path.split('/').last),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  void _navigateToListings() {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CVListingsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          );
        },
      ),
    );
  }

  void _removeFile() {
    setState(() {
      selectedFile = null;
      isUploading = false;
      uploadProgress = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResumePickerCubit, ResumePickerState>(
      bloc: _resumePickerCubit,
      listener: (_, ResumePickerState state) {
        state.status.maybeWhen(
          success: (String? data) {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CVAnalysisScreen(
                        fileName: state.pickedFile!.path.split('/').last),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );
          },
          error: (String? error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '$error',
                  style: GoogleFonts.poppins(),
                ),
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
            'Upload Your CV',
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
          actions: [
            IconButton(
              icon: Icon(Icons.list, color: Colors.white),
              onPressed: _navigateToListings,
              tooltip: 'View All CVs',
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              // Animated particles background
              AnimatedBuilder(
                animation: _particleAnimation,
                builder: (context, child) {
                  return CustomPaint(
                    painter: ParticlePainter(_particleAnimation.value),
                    size: Size.infinite,
                  );
                },
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: AnimatedBuilder(
                    animation: _cardScaleAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _cardScaleAnimation.value,
                        child: _buildUploadCard(),
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

  Widget _buildUploadCard() {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<ResumePickerCubit, ResumePickerState>(
                bloc: _resumePickerCubit,
                builder: (context, state) {
                  if (state.pickedFile == null) {
                    return Column(
                      children: [
                        _buildPDFIcon(),
                        SizedBox(height: 24),
                        _buildSelectButton(),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        _buildSelectedFile(state.pickedFile),
                        SizedBox(height: 24),
                        if (state.uploadProgress > 0) _buildProgressIndicator()
                      ],
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildPDFIcon() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.picture_as_pdf,
        size: 40,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSelectButton() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: ElevatedButton(
        onPressed: _pickFile,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF6A11CB),
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.3),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.upload_file),
            SizedBox(width: 8),
            Text(
              'Select File',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedFile(File? pickedFile) {
    return AnimatedOpacity(
      opacity: (pickedFile != null ? 1.0 : 0.0).clamp(0.0, 1.0),
      duration: Duration(milliseconds: 300),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.picture_as_pdf,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            pickedFile?.path.split('/').last ?? '',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: _removeFile,
            child: Text(
              'Remove',
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.8),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Column(
      children: [
        BlocSelector<ResumePickerCubit, ResumePickerState, int>(
            bloc: _resumePickerCubit,
            selector: (state) => state.uploadProgress,
            builder: (_, progress) {
              uploadProgress = progress / 100;
              return GestureDetector(
                onTap: () {
                  if (uploadProgress < 1.0) {
                    _resumePickerCubit.resetFile();
                  }
                },
                child: LinearProgressIndicator(
                  value: uploadProgress,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              );
            }),
        SizedBox(height: 16),
        Text(
          '${(uploadProgress * 100).toInt()}%',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
