import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/section_heading.dart';

class ValuesSection extends StatelessWidget {
  const ValuesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(
          title: 'Our Core Values',
          subtitle: 'The principles we live by.',
        ),
        const SizedBox(height: AppSpacing.md),
        _buildValueItem(
          Icons.verified_user,
          'Integrity',
          'We operate with honesty and transparency in all our dealings.',
        ),
        _buildValueItem(
          Icons.speed,
          'Efficiency',
          'We optimize every route and process to ensure timely deliveries.',
        ),
        _buildValueItem(
          Icons.favorite,
          'Customer Centricity',
          'Your satisfaction is our top priority.',
        ),
      ],
    );
  }

  Widget _buildValueItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primaryAccent, size: 24),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.h3),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  description,
                  style: AppTextStyles.bodyMuted,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
