import 'package:flutter/material.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/footer.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/section_heading.dart';
import '../../drawer/presentation/app_drawer.dart';
import '../widgets/account_section.dart';
import '../widgets/profile_header.dart';
import '../widgets/shipment_tile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(
              name: 'John Doe',
              membershipType: 'Premium Member',
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeading(
                    title: 'Account Overview',
                    subtitle: 'Manage your profile and settings.',
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  AccountSection(
                    title: 'Personal Information',
                    children: [
                      _buildInfoRow('Name', 'John Doe'),
                      _buildInfoRow('Email', 'john.doe@example.com'),
                      _buildInfoRow('Phone', '+44 7700 900000'),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  const AccountSection(
                    title: 'Recent Shipments',
                    children: [
                      ShipmentTile(
                        id: 'BLU-8821-0041',
                        status: 'Delivered',
                        date: 'Oct 20, 2024',
                      ),
                      ShipmentTile(
                        id: 'BLU-1294-5582',
                        status: 'In Transit',
                        date: 'Oct 24, 2024',
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  AccountSection(
                    title: 'Security',
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Change Password'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text('Two-Factor Authentication'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  PrimaryButton(
                    text: 'Logout',
                    onPressed: () {},
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.bodyMuted),
          Text(value, style: AppTextStyles.body),
        ],
      ),
    );
  }
}
