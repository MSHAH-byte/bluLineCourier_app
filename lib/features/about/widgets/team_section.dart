import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/section_heading.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(
          title: 'The Team',
          subtitle: 'Experts dedicated to your logistics needs.',
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          'Our team consists of industry veterans and innovative technologists working together to solve the world\'s most complex logistics challenges.',
          style: AppTextStyles.body,
        ),
      ],
    );
  }
}
