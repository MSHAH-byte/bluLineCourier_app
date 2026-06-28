# FLUTTER_PROJECT_BLUEPRINT.md

# BluLine Courier Flutter Application

Version: 1.0

---

# Purpose

This blueprint defines the implementation plan for the Flutter project. It serves as the Day 1 setup guide and ensures every contributor follows the same project structure and workflow.

---

# 1. Project Initialization

* Create Flutter project
* Initialize Git repository
* Connect GitHub remote
* Verify Flutter environment
* Run application successfully

---

# 2. Install Dependencies

Core packages:

* flutter_riverpod
* go_router
* flutter_svg
* google_fonts
* cached_network_image
* url_launcher
* intl
* shimmer
* flutter_animate

---

# 3. Folder Structure

```text
lib/

app/
core/
shared/
features/

main.dart
```

### app/

* app.dart
* router.dart
* app_initializer.dart

### core/

* constants/
* theme/
* services/
* utils/
* extensions/

### shared/

* widgets/
* models/
* repositories/

### features/

* splash/
* home/
* about/
* services/
* service_area/
* tracking/
* contact/
* account/

---

# 4. Asset Structure

```text
assets/

images/
logos/
icons/
illustrations/
animations/
fonts/
```

---

# 5. Theme Files

Create:

* app_colors.dart
* app_text_styles.dart
* app_spacing.dart
* app_radius.dart
* app_shadows.dart
* app_durations.dart
* app_theme.dart

---

# 6. Routing Structure

Routes:

* /
* /home
* /about
* /services
* /service-area
* /tracking
* /contact
* /account

Use GoRouter with named routes.

---

# 7. State Management

Use Riverpod for:

* App state
* Navigation state (where appropriate)
* Form state
* Loading state
* Future API state

---

# 8. Reusable Widgets

Build these before screens:

* PrimaryButton
* SecondaryButton
* SectionHeading
* HeroSection
* ServiceCard
* StatisticCard
* AppDrawer
* Footer
* AppTextField
* AppDropdown
* LoadingIndicator

---

# 9. Screen Development Order

1. Splash
2. Home
3. Navigation Drawer
4. Services
5. About
6. Service Area
7. Contact
8. Tracking
9. My Account

---

# 10. Backend Preparation

Create:

* Models
* Repository interfaces
* Mock repositories
* Providers

No real backend integration in this phase.

---

# 11. Quality Checklist

Before each feature is complete:

* Code compiles
* Flutter Analyze passes
* No layout overflow
* Responsive
* Uses AppTheme
* Uses reusable widgets
* Matches website UI
* No hardcoded values

---

# 12. Final Deliverables

The completed project shall include:

* Flutter source code
* SDS
* PROJECT_RULES.md
* TECH_STACK.md
* DESIGN_SYSTEM.md
* Responsive UI
* Reusable widget library
* Backend-ready architecture
* GitHub repository

---

# Day 1 Checklist

* Flutter project created
* Git initialized
* Dependencies installed
* Folder structure created
* Theme system added
* Routing configured
* Assets configured
* App launches successfully

Only after completing this checklist should screen development begin.
