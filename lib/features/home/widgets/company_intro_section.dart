import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/section_heading.dart';

class CompanyIntroSection extends StatelessWidget {
  const CompanyIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            title: 'Your Trusted Logistics Partner',
            subtitle: 'Excellence in every delivery, every time.',
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'BluLine Courier has been at the forefront of the logistics industry for over a decade. We specialize in fast, secure, and reliable shipping solutions tailored to meet your unique needs.',
            style: AppTextStyles.bodyMuted,
          ),
        ],
      ),
    );
  }
}
