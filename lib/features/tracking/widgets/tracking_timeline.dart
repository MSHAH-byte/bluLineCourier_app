import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/section_heading.dart';
import 'tracking_timeline_item.dart';

class TrackingTimeline extends StatelessWidget {
  const TrackingTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      child: const Column(
        children: [
          TrackingTimelineItem(
            title: 'Delivered',
            status: 'Pending',
            icon: Icons.check_circle_outline,
            hasLine: false,
            isCompleted: false,
          ),
          TrackingTimelineItem(
            title: 'Out for Delivery',
            status: 'In Transit',
            icon: Icons.local_shipping_outlined,
            hasLine: true,
            isCompleted: false,
          ),
          TrackingTimelineItem(
            title: 'Package Arrived at Sorting Facility',
            status: 'Dubai, UAE - Oct 24, 10:30 AM',
            icon: Icons.inventory_2_outlined,
            hasLine: true,
            isCompleted: true,
          ),
          TrackingTimelineItem(
            title: 'Shipment Picked Up',
            status: 'London, UK - Oct 22, 02:15 PM',
            icon: Icons.home_outlined,
            hasLine: false,
            isCompleted: true,
          ),
        ],
      ),
    );
  }
}
