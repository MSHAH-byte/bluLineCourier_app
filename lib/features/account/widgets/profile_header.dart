import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String membershipType;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.membershipType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxl),
      decoration: const BoxDecoration(
        color: AppColors.secondaryBackground,
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.primaryAccent,
            child: Icon(Icons.person, size: 50, color: AppColors.primaryBackground),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(name, style: AppTextStyles.h2),
          Text(
            membershipType,
            style: AppTextStyles.caption.copyWith(color: AppColors.textAccent),
          ),
        ],
      ),
    );
  }
}
