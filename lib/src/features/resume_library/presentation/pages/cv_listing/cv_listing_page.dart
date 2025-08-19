import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../domain/models/cv_summary_data.dart';
import '../cv_detail/cv_detail_page.dart';
import 'widgets/stat_card_widget.dart';
import 'widgets/cv_card_widget.dart';
import 'widgets/pagination_widget.dart';

class CVListingPage extends StatefulWidget {
  const CVListingPage({super.key});

  @override
  State<CVListingPage> createState() => _CVListingPageState();
}

class _CVListingPageState extends State<CVListingPage>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  int currentPage = 0;
  final int itemsPerPage = 5;
  late int totalPages;
  late List<CVSummaryData> allCVs;
  late List<CVSummaryData> currentPageCVs = [];

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    // Initialize with mock data
    allCVs = _generateMockCVData();
    totalPages = (allCVs.length / itemsPerPage).ceil();
    _updateCurrentPageData();
    _fadeController.forward();
  }

  void _updateCurrentPageData() {
    final startIndex = currentPage * itemsPerPage;
    final endIndex = math.min(startIndex + itemsPerPage, allCVs.length);
    setState(() {
      currentPageCVs = allCVs.sublist(startIndex, endIndex);
    });
  }

  void _goToPage(int page) {
    if (page >= 0 && page < totalPages) {
      setState(() {
        currentPage = page;
        _updateCurrentPageData();
      });
      _fadeController.reset();
      _fadeController.forward();
    }
  }

  void _viewCVDetails(CVSummaryData cv) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CVDetailPage(cvData: cv),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'CV Library',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          _buildStatsHeader(),
          Expanded(child: _buildCVList()),
          _buildPagination(),
        ],
      ),
    );
  }

  Widget _buildStatsHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatCardWidget(
            title: 'Total CVs',
            value: '${allCVs.length}',
            icon: Icons.description,
          ),
          StatCardWidget(
            title: 'Pages',
            value: '$totalPages',
            icon: Icons.pages,
          ),
          StatCardWidget(
            title: 'Current',
            value: '${currentPage + 1}',
            icon: Icons.bookmark,
          ),
        ],
      ),
    );
  }

  Widget _buildCVList() {
    return AnimatedBuilder(
      animation: _fadeController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeController,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: currentPageCVs.length,
            itemBuilder: (context, index) {
              return CVCardWidget(
                cv: currentPageCVs[index],
                onTap: () => _viewCVDetails(currentPageCVs[index]),
                index: index,
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildPagination() {
    return PaginationWidget(
      currentPage: currentPage,
      totalPages: totalPages,
      onPageChanged: _goToPage,
    );
  }

  // Mock data generation
  static List<CVSummaryData> _generateMockCVData() {
    return [
      CVSummaryData(
        name: 'Sarah Johnson',
        position: 'Senior Flutter Developer',
        experience: 'Senior',
        summary: 'Experienced mobile developer with expertise in Flutter and React Native. Led multiple successful app launches with 1M+ downloads.',
        skills: ['Flutter', 'Dart', 'Firebase', 'iOS', 'Android'],
        uploadDate: '2024-08-10',
      ),
      CVSummaryData(
        name: 'Michael Chen',
        position: 'Full Stack Developer',
        experience: 'Mid-level',
        summary: 'Full-stack developer specializing in web applications using React, Node.js, and modern cloud technologies.',
        skills: ['React', 'Node.js', 'AWS', 'MongoDB', 'GraphQL'],
        uploadDate: '2024-08-12',
      ),
      CVSummaryData(
        name: 'Emily Rodriguez',
        position: 'UI/UX Designer',
        experience: 'Senior',
        summary: 'Creative UI/UX designer with 7+ years experience creating intuitive and beautiful user interfaces for mobile and web.',
        skills: ['Figma', 'Adobe XD', 'Prototyping', 'User Research', 'Design Systems'],
        uploadDate: '2024-08-13',
      ),
      CVSummaryData(
        name: 'David Kim',
        position: 'iOS Developer',
        experience: 'Mid-level',
        summary: 'Native iOS developer with strong Swift skills and experience building scalable applications for the App Store.',
        skills: ['Swift', 'SwiftUI', 'UIKit', 'Core Data', 'Xcode'],
        uploadDate: '2024-08-14',
      ),
      CVSummaryData(
        name: 'Lisa Wang',
        position: 'Product Manager',
        experience: 'Senior',
        summary: 'Strategic product manager with expertise in mobile app development lifecycle and agile methodologies.',
        skills: ['Product Strategy', 'Agile', 'Analytics', 'User Stories', 'Roadmapping'],
        uploadDate: '2024-08-15',
      ),
      CVSummaryData(
        name: 'Alex Thompson',
        position: 'Backend Engineer',
        experience: 'Junior',
        summary: 'Backend engineer focused on building scalable APIs and microservices using modern frameworks.',
        skills: ['Python', 'Django', 'PostgreSQL', 'Docker', 'Kubernetes'],
        uploadDate: '2024-08-16',
      ),
      CVSummaryData(
        name: 'Maria Garcia',
        position: 'Data Scientist',
        experience: 'Mid-level',
        summary: 'Data scientist with expertise in machine learning and statistical analysis for business insights.',
        skills: ['Python', 'Machine Learning', 'TensorFlow', 'SQL', 'Jupyter'],
        uploadDate: '2024-08-17',
      ),
      CVSummaryData(
        name: 'James Wilson',
        position: 'DevOps Engineer',
        experience: 'Senior',
        summary: 'DevOps engineer specializing in cloud infrastructure, CI/CD pipelines, and automation.',
        skills: ['AWS', 'Docker', 'Kubernetes', 'Jenkins', 'Terraform'],
        uploadDate: '2024-08-18',
      ),
      CVSummaryData(
        name: 'Sophie Miller',
        position: 'Frontend Developer',
        experience: 'Junior',
        summary: 'Frontend developer passionate about creating responsive and accessible web applications.',
        skills: ['JavaScript', 'React', 'CSS', 'HTML', 'Webpack'],
        uploadDate: '2024-08-19',
      ),
      CVSummaryData(
        name: 'Ryan Davis',
        position: 'Mobile Architect',
        experience: 'Senior',
        summary: 'Mobile architect with extensive experience designing scalable mobile application architectures.',
        skills: ['Architecture', 'Flutter', 'React Native', 'iOS', 'Android'],
        uploadDate: '2024-08-20',
      ),
    ];
  }
}
