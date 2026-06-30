import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../drawer/presentation/app_drawer.dart';
import '../widgets/mission_vision_section.dart';
import '../widgets/team_section.dart';
import '../widgets/values_section.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      drawer: const AppDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(
              title: 'Our Story',
              subtitle: 'Delivering excellence and building trust since 2010.',
            ),
            Padding(
              padding: EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MissionVisionSection(),
                  SizedBox(height: AppSpacing.xl),
                  ValuesSection(),
                  SizedBox(height: AppSpacing.xl),
                  TeamSection(),
                ],
              ),
            ),
            SizedBox(height: AppSpacing.section),
            Footer(),
          ],
        ),
      ),
    );
  }
}
