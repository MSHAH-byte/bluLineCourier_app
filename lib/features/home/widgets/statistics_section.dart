import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/statistic_card.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Wrap(
        spacing: AppSpacing.md,
        runSpacing: AppSpacing.md,
        children: const [
          StatisticCard(
            label: 'Active Countries',
            value: '50+',
            icon: Icons.public,
          ),
          StatisticCard(
            label: 'Packages Delivered',
            value: '1M+',
            icon: Icons.inventory_2,
          ),
          StatisticCard(
            label: 'Happy Clients',
            value: '10K+',
            icon: Icons.people,
          ),
        ],
      ),
    );
  }
}
