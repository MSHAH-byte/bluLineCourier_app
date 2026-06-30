import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class ShipmentTile extends StatelessWidget {
  final String id;
  final String status;
  final String date;

  const ShipmentTile({
    super.key,
    required this.id,
    required this.status,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDelivered = status == 'Delivered';

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(id, style: AppTextStyles.bodyLarge),
      subtitle: Text(date, style: AppTextStyles.caption),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isDelivered
              ? AppColors.success.withValues(alpha: 0.1)
              : AppColors.primaryAccent.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          status,
          style: AppTextStyles.caption.copyWith(
            color: isDelivered ? AppColors.success : AppColors.primaryAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
