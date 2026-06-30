import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/route_constants.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      context.goNamed(RouteConstants.homeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Placeholder
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.primaryAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.local_shipping,
                size: 60,
                color: AppColors.primaryBackground,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'BLULINE COURIER',
              style: AppTextStyles.h1.copyWith(
                letterSpacing: 4,
                color: AppColors.primaryAccent,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Fast. Reliable. Secure.',
              style: AppTextStyles.caption,
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryAccent),
            ),
          ],
        ),
      ),
    );
  }
}
