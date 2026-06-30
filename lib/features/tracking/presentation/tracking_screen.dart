import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../drawer/presentation/app_drawer.dart';
import '../widgets/tracking_search_card.dart';
import '../widgets/tracking_timeline.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final TextEditingController _trackingController = TextEditingController();
  bool _showResult = false;

  void _handleTrack() {
    if (_trackingController.text.isNotEmpty) {
      setState(() {
        _showResult = true;
      });
    }
  }

  @override
  void dispose() {
    _trackingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Shipment'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(
              title: 'Track Your Package',
              subtitle: 'Get real-time updates on your shipment status and estimated delivery time.',
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TrackingSearchCard(
                    controller: _trackingController,
                    onTrackPressed: _handleTrack,
                  ),
                  if (_showResult) ...[
                    const SizedBox(height: AppSpacing.xxl),
                    const SectionHeading(
                      title: 'Shipment Status',
                      subtitle: 'Last updated: 5 minutes ago',
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    const TrackingTimeline(),
                  ],
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
