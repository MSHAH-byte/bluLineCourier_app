import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/primary_button.dart';

class CallToActionSection extends StatelessWidget {
  const CallToActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      color: AppColors.surface,
      child: Column(
        children: [
          Text(
            'Ready to ship?',
            style: AppTextStyles.h2,
          ),
          const SizedBox(height: AppSpacing.md),
          PrimaryButton(
            text: 'Contact Us Now',
            width: 250,
            onPressed: () => context.goNamed(RouteConstants.contactName),
          ),
        ],
      ),
    );
  }
}
