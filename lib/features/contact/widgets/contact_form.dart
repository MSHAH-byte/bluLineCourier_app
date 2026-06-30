import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/app_dropdown.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/section_heading.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(
          title: 'Send us a message',
          subtitle: 'We typically respond within 24 hours.',
        ),
        const SizedBox(height: AppSpacing.lg),
        const AppTextField(
          label: 'Full Name',
          hintText: 'Enter your name',
        ),
        const SizedBox(height: AppSpacing.md),
        const AppTextField(
          label: 'Email Address',
          hintText: 'Enter your email',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: AppSpacing.md),
        AppDropdown<String>(
          label: 'Subject',
          hintText: 'Select a subject',
          items: const [
            DropdownMenuItem(value: 'quote', child: Text('Request a Quote')),
            DropdownMenuItem(value: 'tracking', child: Text('Tracking Inquiry')),
            DropdownMenuItem(value: 'support', child: Text('Customer Support')),
            DropdownMenuItem(value: 'other', child: Text('Other')),
          ],
          onChanged: (value) {},
        ),
        const SizedBox(height: AppSpacing.md),
        const AppTextField(
          label: 'Message',
          hintText: 'Your message here...',
        ),
        const SizedBox(height: AppSpacing.lg),
        PrimaryButton(
          text: 'Submit Message',
          onPressed: () {},
        ),
      ],
    );
  }
}
