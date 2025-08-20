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
          onPressed: currentPage > 0 ? () => onPageChanged(currentPage - 1) : null,
          isActive: currentPage > 0, context: context,
        ),
        const SizedBox(width: 8),
        ...List.generate(
          totalPages,
          (index) => _buildPageNumber(index, context),
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
    required BuildContext context
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isActive
                ? Theme.of(context).primaryColor.withOpacity(0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive
                  ? Theme.of(context).primaryColor
                  : Colors.grey[300]!,
              width: 1,
            ),
          ),
          child: Icon(
            icon,
            size: 20,
            color: isActive
                ? Theme.of(context).primaryColor
                : Colors.grey[400],
          ),
        ),
      ),
    );
  }

  Widget _buildPageNumber(int index, BuildContext context) {
    final isCurrentPage = index == currentPage;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onPageChanged(index),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: isCurrentPage
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isCurrentPage
                    ? Theme.of(context).primaryColor
                    : Colors.grey[300]!,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: isCurrentPage ? FontWeight.w600 : FontWeight.normal,
                  color: isCurrentPage
                      ? Colors.white
                      : Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
