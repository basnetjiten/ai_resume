import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (totalPages <= 1) return const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPaginationButton(
          icon: Icons.chevron_left,
          onPressed: currentPage > 0
              ? () => onPageChanged(currentPage - 1)
              : null,
          isActive: currentPage > 0,
          context: context,
        ),
        const SizedBox(width: 8),
        ...List.generate(
          totalPages,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: _buildPageNumber(index, context),
          ),
        ),
        const SizedBox(width: 8),
        _buildPaginationButton(
          context: context,
          icon: Icons.chevron_right,
          onPressed: currentPage < totalPages - 1
              ? () => onPageChanged(currentPage + 1)
              : null,
          isActive: currentPage < totalPages - 1,
        ),
      ],
    );
  }

  Widget _buildPaginationButton({
    required IconData icon,
    required VoidCallback? onPressed,
    required bool isActive,
    required BuildContext context,
  }) {
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
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          child: Icon(
            icon,
            size: 20,
            color: Colors.white.withOpacity(onPressed != null ? 1.0 : 0.5),
          ),
        ),
      ),
    );
  }

  Widget _buildPageNumber(int index, BuildContext context) {
    final isCurrentPage = index == currentPage;

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isCurrentPage
            ? Colors.white.withOpacity(0.3)
            : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isCurrentPage
              ? Colors.white.withOpacity(0.5)
              : Colors.white.withOpacity(0.2),
          width: isCurrentPage ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onPageChanged(index),
          borderRadius: BorderRadius.circular(12),
          child: Center(
            child: Text(
              '${index + 1}',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: isCurrentPage ? FontWeight.w700 : FontWeight.w500,
                color: Colors.white.withOpacity(isCurrentPage ? 1.0 : 0.8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
