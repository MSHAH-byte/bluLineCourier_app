import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/section_heading.dart';

class TrackingSearchCard extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onTrackPressed;

  const TrackingSearchCard({
    super.key,
    required this.controller,
    required this.onTrackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(AppRadius.large),
        border: Border.all(color: AppColors.surface),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            title: 'Enter Tracking Number',
            subtitle: 'Standard format: BLU-XXXX-XXXX',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            label: 'Tracking ID',
            hintText: 'e.g. BLU-1234-5678',
            controller: controller,
            prefixIcon: const Icon(Icons.search, color: AppColors.textSecondary),
          ),
          const SizedBox(height: AppSpacing.lg),
          PrimaryButton(
            text: 'Track Now',
            onPressed: onTrackPressed,
          ),
        ],
      ),
    );
  }
}
