import 'package:flutter/material.dart';
import '../../core/constants/responsive_breakpoints.dart';
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
    final bool isDesktop = MediaQuery.of(context).size.width > ResponsiveBreakpoints.tablet;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: isDesktop ? AppSpacing.section : AppSpacing.xxl,
      ),
      child: isDesktop
          ? Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildContent(context),
                  ),
                ),
                if (image != null) ...[
                  const SizedBox(width: AppSpacing.xxl),
                  Expanded(child: image!),
                ],
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._buildContent(context),
                if (image != null) ...[
                  const SizedBox(height: AppSpacing.xxl),
                  image!,
                ],
              ],
            ),
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    return [
      Text(
        title,
        style: AppTextStyles.display,
      ),
      if (subtitle != null) ...[
        const SizedBox(height: AppSpacing.md),
        Text(
          subtitle!,
          style: AppTextStyles.bodyLargeMuted,
        ),
      ],
      if (action != null) ...[
        const SizedBox(height: AppSpacing.lg),
        action!,
      ],
    ];
  }
}
