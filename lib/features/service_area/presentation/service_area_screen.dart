import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../drawer/presentation/app_drawer.dart';

class ServiceAreaScreen extends StatelessWidget {
  const ServiceAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Area'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(
              title: 'Where We Operate',
              subtitle:
                  'Our global network ensures your packages reach their destination, no matter how remote.',
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeading(
                    title: 'Global Coverage',
                    subtitle: 'Connecting continents with speed and precision.',
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _buildRegionSection('North America', ['USA', 'Canada', 'Mexico']),
                  _buildRegionSection(
                      'Europe', ['UK', 'Germany', 'France', 'Italy', 'Spain', 'Netherlands']),
                  _buildRegionSection('Asia Pacific', ['China', 'Japan', 'Australia', 'Singapore', 'India']),
                  _buildRegionSection('Middle East & Africa', ['UAE', 'Saudi Arabia', 'South Africa', 'Kenya']),
                  const SizedBox(height: AppSpacing.xl),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.info_outline, color: AppColors.primaryAccent, size: 32),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'Don\'t see your country?',
                          style: AppTextStyles.h3,
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          'We are constantly expanding. Contact our support team to check for custom shipping options to your location.',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.bodyMuted,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.section),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildRegionSection(String region, List<String> countries) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(region, style: AppTextStyles.h3.copyWith(color: AppColors.primaryAccent)),
          const SizedBox(height: AppSpacing.sm),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: countries
                .map((country) => Chip(
                      label: Text(country),
                      backgroundColor: AppColors.secondaryBackground,
                      side: const BorderSide(color: AppColors.surface),
                      labelStyle: AppTextStyles.caption.copyWith(color: AppColors.textPrimary),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
