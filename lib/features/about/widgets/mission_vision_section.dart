import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/section_heading.dart';

class MissionVisionSection extends StatelessWidget {
  const MissionVisionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(
          title: 'Mission & Vision',
          subtitle: 'What drives us forward.',
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          'Our mission is to provide the most reliable and efficient courier services in the world. We envision a future where logistics are seamless, transparent, and accessible to everyone, everywhere.',
          style: AppTextStyles.body,
        ),
      ],
    );
  }
}
