import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

/// The reusable application drawer for navigation.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.secondaryBackground,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primaryBackground,
            ),
            child: Center(
              child: Text(
                AppConstants.appName,
                style: AppTextStyles.h2.copyWith(color: AppColors.primaryAccent),
              ),
            ),
          ),
          const _DrawerTile(
            title: 'Home',
            icon: Icons.home_outlined,
            routeName: RouteConstants.homeName,
          ),
          const _DrawerTile(
            title: 'About',
            icon: Icons.info_outline,
            routeName: RouteConstants.aboutName,
          ),
          const _DrawerTile(
            title: 'Services',
            icon: Icons.local_shipping_outlined,
            routeName: RouteConstants.servicesName,
          ),
          const _DrawerTile(
            title: 'Service Area',
            icon: Icons.map_outlined,
            routeName: RouteConstants.serviceAreaName,
          ),
          const _DrawerTile(
            title: 'Tracking',
            icon: Icons.location_on_outlined,
            routeName: RouteConstants.trackingName,
          ),
          const _DrawerTile(
            title: 'Contact',
            icon: Icons.contact_support_outlined,
            routeName: RouteConstants.contactName,
          ),
          const Spacer(),
          const _DrawerTile(
            title: 'Account',
            icon: Icons.person_outline,
            routeName: RouteConstants.accountName,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routeName;

  const _DrawerTile({
    required this.title,
    required this.icon,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    final String? currentName = GoRouterState.of(context).name;
    final bool isSelected = currentName == routeName;

    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? AppColors.primaryAccent : AppColors.textSecondary,
      ),
      title: Text(
        title,
        style: isSelected
            ? AppTextStyles.bodyAccent.copyWith(fontWeight: FontWeight.w700)
            : AppTextStyles.body,
      ),
      selected: isSelected,
      onTap: () {
        context.goNamed(routeName);
        Navigator.pop(context); // Close drawer
      },
    );
  }
}
