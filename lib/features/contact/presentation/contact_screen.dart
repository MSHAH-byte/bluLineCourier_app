import 'package:flutter/material.dart';
import '../../../core/constants/responsive_breakpoints.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../drawer/presentation/app_drawer.dart';
import '../widgets/contact_form.dart';
import '../widgets/contact_information.dart';
import '../widgets/map_placeholder.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > ResponsiveBreakpoints.tablet;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(
              title: 'Get In Touch',
              subtitle: 'Have a question or need a quote? Our team is here to help you with all your logistics needs.',
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: isDesktop
                  ? const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: ContactForm()),
                        SizedBox(width: AppSpacing.xxl),
                        Expanded(child: ContactInformation()),
                      ],
                    )
                  : const Column(
                      children: [
                        ContactForm(),
                        SizedBox(height: AppSpacing.xxl),
                        ContactInformation(),
                      ],
                    ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: MapPlaceholder(),
            ),
            const SizedBox(height: AppSpacing.section),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
