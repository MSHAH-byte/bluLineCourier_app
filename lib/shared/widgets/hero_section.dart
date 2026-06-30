import 'package:flutter/material.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';

/// A reusable hero section for the application.
class HeroSection extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? action;
  final Widget? image;

  const HeroSection({
    super.key,
    required this.title,
    this.subtitle,
    this.action,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xxl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.display,
          ),
          if (subtitle != null) ...[
            const SizedBox(height: AppSpacing.md),
            Text(
              subtitle!,
              style: AppTextStyles.bodyLarge.copyWith(
                color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.8),
              ),
            ),
          ],
          if (action != null) ...[
            const SizedBox(height: AppSpacing.lg),
            action!,
          ],
          if (image != null) ...[
            const SizedBox(height: AppSpacing.xxl),
            image!,
          ],
        ],
      ),
    );
  }
}
