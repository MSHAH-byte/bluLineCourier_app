import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/info_tile.dart';
import '../../../shared/widgets/section_heading.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Contact Information',
          subtitle: 'Reach out to us directly.',
        ),
        SizedBox(height: AppSpacing.lg),
        InfoTile(
          icon: Icons.location_on,
          title: 'Headquarters',
          value: '123 Logistics Way, London, UK',
        ),
        InfoTile(
          icon: Icons.phone,
          title: 'Phone',
          value: '+44 20 1234 5678',
        ),
        InfoTile(
          icon: Icons.email,
          title: 'Email',
          value: 'support@blulinecourier.com',
        ),
        InfoTile(
          icon: Icons.access_time,
          title: 'Business Hours',
          value: 'Mon - Fri: 8:00 AM - 6:00 PM',
        ),
      ],
    );
  }
}
