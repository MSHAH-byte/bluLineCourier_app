import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/responsive_breakpoints.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../../shared/widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isWide = screenWidth > ResponsiveBreakpoints.mobile;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        children: [
          const SectionHeading(
            title: 'Our Services',
            subtitle: 'Comprehensive solutions for every shipment.',
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const SizedBox(height: AppSpacing.lg),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: isWide ? 3 : 1,
            mainAxisSpacing: AppSpacing.md,
            crossAxisSpacing: AppSpacing.md,
            childAspectRatio: 1.2,
            children: [
              ServiceCard(
                title: 'Express Delivery',
                description: 'Next-day delivery for urgent packages.',
                icon: Icons.bolt,
                onTap: () => context.goNamed(RouteConstants.servicesName),
              ),
              ServiceCard(
                title: 'International Shipping',
                description: 'Global reach with reliable tracking.',
                icon: Icons.language,
                onTap: () => context.goNamed(RouteConstants.servicesName),
              ),
              ServiceCard(
                title: 'E-commerce Solutions',
                description: 'Integrated logistics for your online store.',
                icon: Icons.shopping_cart,
                onTap: () => context.goNamed(RouteConstants.servicesName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
