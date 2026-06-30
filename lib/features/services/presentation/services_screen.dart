import 'package:flutter/material.dart';
import '../../../core/constants/responsive_breakpoints.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../../shared/widgets/service_card.dart';
import '../../drawer/presentation/app_drawer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth > ResponsiveBreakpoints.tablet;
    final bool isTablet = screenWidth > ResponsiveBreakpoints.mobile &&
        screenWidth <= ResponsiveBreakpoints.tablet;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(
              title: 'Comprehensive Logistics Solutions',
              subtitle:
                  'Tailored services to meet your unique shipping and supply chain requirements.',
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeading(
                    title: 'Core Services',
                    subtitle: 'Reliable delivery options for every need.',
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: isDesktop ? 3 : (isTablet ? 2 : 1),
                    mainAxisSpacing: AppSpacing.md,
                    crossAxisSpacing: AppSpacing.md,
                    childAspectRatio: 1.1,
                    children: const [
                      ServiceCard(
                        title: 'Express Delivery',
                        description:
                            'Time-critical shipments delivered with the highest priority and speed.',
                        icon: Icons.bolt,
                      ),
                      ServiceCard(
                        title: 'Standard Courier',
                        description:
                            'Cost-effective and reliable delivery for your non-urgent packages.',
                        icon: Icons.local_shipping,
                      ),
                      ServiceCard(
                        title: 'International Shipping',
                        description:
                            'Global reach with simplified customs clearance and end-to-end tracking.',
                        icon: Icons.public,
                      ),
                      ServiceCard(
                        title: 'E-commerce Fulfillment',
                        description:
                            'Optimized warehousing and shipping solutions for online businesses.',
                        icon: Icons.store,
                      ),
                      ServiceCard(
                        title: 'Heavy Freight',
                        description:
                            'Secure transport for large, bulky, or heavy cargo across borders.',
                        icon: Icons.inventory,
                      ),
                      ServiceCard(
                        title: 'Custom Logistics',
                        description:
                            'Specialized handling for fragile, medical, or high-value shipments.',
                        icon: Icons.settings,
                      ),
                    ],
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
}
