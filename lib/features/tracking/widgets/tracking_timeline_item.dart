import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';

class TrackingTimelineItem extends StatelessWidget {
  final String title;
  final String status;
  final IconData icon;
  final bool hasLine;
  final bool isCompleted;

  const TrackingTimelineItem({
    super.key,
    required this.title,
    required this.status,
    required this.icon,
    this.hasLine = true,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isCompleted ? AppColors.primaryAccent : AppColors.textDisabled;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(icon, color: color, size: 28),
            if (hasLine)
              Container(
                width: 2,
                height: 40,
                color: color.withValues(alpha: 0.3),
              ),
          ],
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.timelineTitle.copyWith(
                  color:
                      isCompleted ? AppColors.textPrimary : AppColors.textDisabled,
                ),
              ),
              Text(
                status,
                style: AppTextStyles.timelineSubtitle.copyWith(
                  color: isCompleted
                      ? AppColors.textSecondary
                      : AppColors.textDisabled,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
            ],
          ),
        ),
      ],
    );
  }
}
