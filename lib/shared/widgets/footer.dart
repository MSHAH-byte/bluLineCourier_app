import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text_styles.dart';

/// A reusable footer component for the application.
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      color: AppColors.secondaryBackground,
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: AppSpacing.lg),
          Text(
            '© 2024 BluLine Courier. All rights reserved.',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Privacy Policy', style: AppTextStyles.caption),
              ),
              const SizedBox(width: AppSpacing.md),
              TextButton(
                onPressed: () {},
                child: Text('Terms of Service', style: AppTextStyles.caption),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
