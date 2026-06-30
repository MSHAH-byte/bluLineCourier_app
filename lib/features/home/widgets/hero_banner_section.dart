import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../shared/widgets/hero_section.dart';
import '../../../shared/widgets/primary_button.dart';

class HeroBannerSection extends StatelessWidget {
  const HeroBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HeroSection(
      title: 'Fast. Reliable.\nSecure Logistics.',
      subtitle: 'We provide end-to-end courier solutions for businesses and individuals across the globe.',
      action: PrimaryButton(
        text: 'Track Shipment',
        width: 200,
        onPressed: () => context.goNamed(RouteConstants.trackingName),
      ),
      image: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppRadius.large),
        ),
        child: const Icon(Icons.map, size: 100, color: AppColors.primaryAccent),
      ),
    );
  }
}
