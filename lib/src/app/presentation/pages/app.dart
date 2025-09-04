import 'dart:async';
import 'package:ai_resume/src/app/presentation/blocs/app_cubit/app_cubit.dart';
import 'package:ai_resume/src/app/presentation/pages/global_bloc_provider.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/core/routes/app_router.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/pages/cv_summary_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return GlobalBlocProvider(
      child: BlocListener<AppCubit, AppState>(
        listener: (BuildContext _, AppState state) {
          state.when(
            initial: () {
              // _routePage(route: const CVUploadRoute());
            },
            unAuthenticated: () {
              //_routePage(route: const LoginRoute());
            },
            authenticated: () {
              //_routePage(route: const CVUploadRoute());
            },
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          localizationsDelegates: <LocalizationsDelegate>[
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          builder: (BuildContext context, Widget? child) {
            //  ErrorWidget.builder = (FlutterErrorDetails details) => AppErrorWidget(details: details);
            return child!;
          },
        ),
      ),
    );
  }
}

class CVAnalysisScreen extends StatefulWidget {
  const CVAnalysisScreen({required this.fileName, super.key});

  final String fileName;

  @override
  _CVAnalysisScreenState createState() => _CVAnalysisScreenState();
}

class _CVAnalysisScreenState extends State<CVAnalysisScreen> with TickerProviderStateMixin {
  late AnimationController _dotsController;
  String displayedText = '';
  String fullText =
      'Analyzing your CV and extracting key information. Our AI is processing your experience, skills, and qualifications to create a comprehensive summary...';
  Timer? _typingTimer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _dotsController = AnimationController(duration: const Duration(seconds: 2), vsync: this)..repeat();

    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    _typingTimer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (_currentIndex < fullText.length) {
        setState(() {
          displayedText = fullText.substring(0, _currentIndex + 1);
          _currentIndex++;
        });
      } else {
        timer.cancel();
        _navigateToSummary();
      }
    });
  }

  void _navigateToSummary() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => CVSummaryPage(fileName: widget.fileName),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  void dispose() {
    _dotsController.dispose();
    _typingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Summarizing your CV...',
                  style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                AnimatedBuilder(
                  animation: _dotsController,
                  builder: (BuildContext context, _) {
                    return LoadingAnimationWidget.waveDots(color: Colors.white, size: 50);
                  },
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              displayedText,
                              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white.withOpacity(0.9), height: 1.6),
                            ),
                          ),
                          AnimatedOpacity(
                            opacity: (_currentIndex < fullText.length ? 1.0 : 0.0).clamp(0.0, 1.0),
                            duration: const Duration(milliseconds: 500),
                            child: Container(width: 2, height: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
