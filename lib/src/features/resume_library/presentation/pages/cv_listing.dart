import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CVListingsScreen extends StatefulWidget {
  const CVListingsScreen({super.key});

  @override
  _CVListingsScreenState createState() => _CVListingsScreenState();
}

class _CVListingsScreenState extends State<CVListingsScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late PageController _pageController;

  int currentPage = 0;
  int itemsPerPage = 5;
  int totalPages = 0;

  final List<CVSummaryData> allCVs = _generateMockCVData();
  List<CVSummaryData> currentPageCVs = [];

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _pageController = PageController();

    totalPages = (allCVs.length / itemsPerPage).ceil();
    _updateCurrentPageData();
    _fadeController.forward();
  }

  void _updateCurrentPageData() {
    int startIndex = currentPage * itemsPerPage;
    int endIndex = math.min(startIndex + itemsPerPage, allCVs.length);
    currentPageCVs = allCVs.sublist(startIndex, endIndex);
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
            CVDetailScreen(cvData: cv),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
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
        child: Column(
          children: [
            // Header with stats
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatCard('Total CVs', '${allCVs.length}', Icons.description),
                  _buildStatCard('Pages', '$totalPages', Icons.pages),
                  _buildStatCard('Current', '${currentPage + 1}', Icons.bookmark),
                ],
              ),
            ),

            // CV List
            Expanded(
              child: AnimatedBuilder(
                animation: _fadeController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _fadeController,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      itemCount: currentPageCVs.length,
                      itemBuilder: (context, index) {
                        return TweenAnimationBuilder<double>(
                          duration: Duration(milliseconds: 600 + (index * 100)),
                          tween: Tween(begin: 0.0, end: 1.0),
                          builder: (context, value, child) {
                            return Transform.translate(
                              offset: Offset(0, 30 * (1 - value)),
                              child: Opacity(
                                opacity: value.clamp(0.0, 1.0),
                                child: _buildCVCard(currentPageCVs[index], index),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            // Pagination
            _buildPagination(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCVCard(CVSummaryData cv, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _viewCVDetails(cv),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cv.name,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            cv.position,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: _getExperienceColor(cv.experience),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        cv.experience,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  cv.summary,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.9),
                    height: 1.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: cv.skills.take(3).map((skill) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      skill,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  )).toList(),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Uploaded: ${cv.uploadDate}',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white.withOpacity(0.7),
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getExperienceColor(String experience) {
    switch (experience) {
      case 'Senior': return Color(0xFF4CAF50);
      case 'Mid-level': return Color(0xFFFF9800);
      case 'Junior': return Color(0xFF2196F3);
      default: return Color(0xFF9C27B0);
    }
  }

  Widget _buildPagination() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPaginationButton(
            icon: Icons.keyboard_arrow_left,
            onPressed: currentPage > 0 ? () => _goToPage(currentPage - 1) : null,
          ),
          SizedBox(width: 16),
          ...List.generate(totalPages, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: _buildPageNumber(index),
            );
          }),
          SizedBox(width: 16),
          _buildPaginationButton(
            icon: Icons.keyboard_arrow_right,
            onPressed: currentPage < totalPages - 1 ? () => _goToPage(currentPage + 1) : null,
          ),
        ],
      ),
    );
  }

  Widget _buildPaginationButton({required IconData icon, VoidCallback? onPressed}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: onPressed != null
            ? Colors.white.withOpacity(0.2)
            : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(onPressed != null ? 0.3 : 0.1),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          child: Icon(
            icon,
            color: Colors.white.withOpacity(onPressed != null ? 1.0 : 0.5),
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildPageNumber(int pageIndex) {
    bool isActive = pageIndex == currentPage;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.white.withOpacity(0.3)
            : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isActive
              ? Colors.white.withOpacity(0.5)
              : Colors.white.withOpacity(0.2),
          width: isActive ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => _goToPage(pageIndex),
          child: Center(
            child: Text(
              '${pageIndex + 1}',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
                color: Colors.white.withOpacity(isActive ? 1.0 : 0.8),
              ),
            ),
          ),
        ),
      ),
    );
  }

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

class CVDetailScreen extends StatefulWidget {
  final CVSummaryData cvData;

  CVDetailScreen({required this.cvData});

  @override
  _CVDetailScreenState createState() => _CVDetailScreenState();
}

class _CVDetailScreenState extends State<CVDetailScreen>
    with TickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));
    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV Details',
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
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
        child: SlideTransition(
          position: _slideAnimation,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Card
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.person, color: Colors.white, size: 40),
                      ),
                      SizedBox(height: 16),
                      Text(
                        widget.cvData.name,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.cvData.position,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: _getExperienceColor(widget.cvData.experience),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${widget.cvData.experience} Level',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                // Summary Section
                _buildDetailSection(
                  'Professional Summary',
                  widget.cvData.summary,
                  Icons.description,
                ),

                SizedBox(height: 20),

                // Skills Section
                _buildSkillsSection(),

                SizedBox(height: 20),

                // Upload Info
                _buildDetailSection(
                  'Upload Information',
                  'Uploaded on ${widget.cvData.uploadDate}',
                  Icons.calendar_today,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailSection(String title, String content, IconData icon) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 20),
              SizedBox(width: 12),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            content,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.white.withOpacity(0.9),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star, color: Colors.white, size: 20),
              SizedBox(width: 12),
              Text(
                'Skills & Technologies',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: widget.cvData.skills.map((skill) => Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Text(
                skill,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }

  Color _getExperienceColor(String experience) {
    switch (experience) {
      case 'Senior': return Color(0xFF4CAF50);
      case 'Mid-level': return Color(0xFFFF9800);
      case 'Junior': return Color(0xFF2196F3);
      default: return Color(0xFF9C27B0);
    }
  }
}

class CVSummaryData {
  final String name;
  final String position;
  final String experience;
  final String summary;
  final List<String> skills;
  final String uploadDate;

  CVSummaryData({
    required this.name,
    required this.position,
    required this.experience,
    required this.summary,
    required this.skills,
    required this.uploadDate,
  });
}

class CVCategory {
  final String title;
  final List<String> items;

  CVCategory({required this.title, required this.items});
}

class ParticlePainter extends CustomPainter {
  final double animationValue;
  final List<Particle> particles;

  ParticlePainter(this.animationValue) : particles = _generateParticles();

  static List<Particle> _generateParticles() {
    final random = math.Random();
    return List.generate(50, (index) {
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
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    for (final particle in particles) {
      final x = (particle.x + animationValue * particle.speed) % 1.0 * size.width;
      final y = particle.y * size.height;
      canvas.drawCircle(Offset(x, y), particle.size, paint);
    }
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}

class Particle {
  final double x;
  final double y;
  final double size;
  final double speed;

  Particle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
  });
}