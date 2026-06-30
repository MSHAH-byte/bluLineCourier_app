import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class AccountSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const AccountSection({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.h3.copyWith(color: AppColors.textSecondary),
        ),
        const Divider(height: 32),
        ...children,
      ],
    );
  }
}
