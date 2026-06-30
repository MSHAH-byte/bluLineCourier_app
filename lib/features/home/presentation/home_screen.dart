import 'package:flutter/material.dart';
import '../../../shared/widgets/footer.dart';
import '../../drawer/presentation/app_drawer.dart';
import '../widgets/call_to_action_section.dart';
import '../widgets/company_intro_section.dart';
import '../widgets/hero_banner_section.dart';
import '../widgets/services_section.dart';
import '../widgets/statistics_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BluLine Courier'),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroBannerSection(),
            StatisticsSection(),
            SizedBox(height: 64), // Using section spacing via value or token
            CompanyIntroSection(),
            SizedBox(height: 64),
            ServicesSection(),
            SizedBox(height: 64),
            CallToActionSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
