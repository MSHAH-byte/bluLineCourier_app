import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/constants/route_constants.dart';
import '../features/splash/presentation/splash_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/about/presentation/about_screen.dart';
import '../features/services/presentation/services_screen.dart';
import '../features/service_area/presentation/service_area_screen.dart';
import '../features/tracking/presentation/tracking_screen.dart';
import '../features/contact/presentation/contact_screen.dart';
import '../features/account/presentation/account_screen.dart';

final router = GoRouter(
  initialLocation: RouteConstants.splashPath,
  routes: [
    GoRoute(
      path: RouteConstants.splashPath,
      name: RouteConstants.splashName,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RouteConstants.homePath,
      name: RouteConstants.homeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: RouteConstants.aboutPath,
      name: RouteConstants.aboutName,
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: RouteConstants.servicesPath,
      name: RouteConstants.servicesName,
      builder: (context, state) => const ServicesScreen(),
    ),
    GoRoute(
      path: RouteConstants.serviceAreaPath,
      name: RouteConstants.serviceAreaName,
      builder: (context, state) => const ServiceAreaScreen(),
    ),
    GoRoute(
      path: RouteConstants.trackingPath,
      name: RouteConstants.trackingName,
      builder: (context, state) => const TrackingScreen(),
    ),
    GoRoute(
      path: RouteConstants.contactPath,
      name: RouteConstants.contactName,
      builder: (context, state) => const ContactScreen(),
    ),
    GoRoute(
      path: RouteConstants.accountPath,
      name: RouteConstants.accountName,
      builder: (context, state) => const AccountScreen(),
    ),
  ],
);
