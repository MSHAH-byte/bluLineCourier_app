\# TECH\_STACK.md



\# BluLine Courier Flutter Application



\*\*Version:\*\* 1.0



This document defines the approved technology stack, package versions, development environment, coding standards, and project setup for the BluLine Courier Flutter application.



\---



\# 1. Development Environment



| Component      | Version                     |

| -------------- | --------------------------- |

| Flutter SDK    | Latest Stable               |

| Dart SDK       | Bundled with Flutter Stable |

| Android Studio | Latest Stable               |

| Android SDK    | API 24+                     |

| Java           | JDK 17                      |

| Gradle         | Flutter Default             |

| Git            | Latest Stable               |



\---



\# 2. Target Platforms



\### Android



\* Minimum SDK: 24

\* Target SDK: Latest Stable

\* Architecture: ARM64 \& x64



\### iOS (Future)



\* Minimum Version: iOS 13+



\---



\# 3. State Management



\*\*Riverpod\*\*



Purpose:



\* App State

\* UI State

\* Form State

\* API State

\* Dependency Injection



\---



\# 4. Navigation



\*\*GoRouter\*\*



Responsibilities:



\* Named Routes

\* Nested Routes

\* Deep Linking (Future)

\* Route Guards (Future)



\---



\# 5. Recommended Packages



| Package                      | Purpose                  |

| ---------------------------- | ------------------------ |

| flutter\_riverpod             | State Management         |

| go\_router                    | Navigation               |

| flutter\_svg                  | SVG Rendering            |

| google\_fonts                 | Typography               |

| cached\_network\_image         | Network Images           |

| shimmer                      | Loading Effects          |

| intl                         | Date \& Time Formatting   |

| url\_launcher                 | Open Phone, Email \& Maps |

| flutter\_animate \*(Optional)\* | UI Animations            |

| equatable                    | Value Equality           |

| freezed \*(Future)\*           | Immutable Models         |

| json\_annotation \*(Future)\*   | JSON Serialization       |



\---



\# 6. Lint Rules



Use:



```yaml

flutter\_lints

```



Rules:



\* Avoid unused imports.

\* Prefer const constructors.

\* Avoid print().

\* Avoid dynamic types.

\* Prefer final variables.

\* Keep methods short.

\* Keep widgets modular.



\---



\# 7. Project Architecture



Feature-First Architecture



```text

Presentation

&#x20;     │

&#x20;     ▼

Widgets

&#x20;     │

&#x20;     ▼

Providers

&#x20;     │

&#x20;     ▼

Repository

&#x20;     │

&#x20;     ▼

Datasource

&#x20;     │

&#x20;     ▼

Backend (Future)

```



\---



\# 8. Theme System



Centralized Theme



Files:



```text

app\_theme.dart



app\_colors.dart



app\_spacing.dart



app\_radius.dart



app\_text\_styles.dart



app\_shadows.dart



app\_durations.dart

```



No widget may define:



\* Colors

\* Typography

\* Radius

\* Padding

\* Shadows

\* Animation Duration



\---



\# 9. Assets



```text

assets/



images/



icons/



logos/



illustrations/



animations/



fonts/

```



Images:



\* PNG

\* WebP



Icons:



\* SVG Preferred



Fonts:



\* Google Fonts



\---



\# 10. Git Workflow



Main Branch



```text

main

```



Development Branch



```text

develop

```



Feature Branch



```text

feature/home



feature/services



feature/contact



feature/account

```



Bug Fix



```text

bugfix/drawer



bugfix/theme

```



\---



\# 11. Build Commands



Create Project



```bash

flutter create bluline\_courier

```



Get Packages



```bash

flutter pub get

```



Analyze Project



```bash

flutter analyze

```



Format Project



```bash

dart format .

```



Run Application



```bash

flutter run

```



Release APK



```bash

flutter build apk --release

```



Android App Bundle



```bash

flutter build appbundle

```



Clean Project



```bash

flutter clean

```



\---



\# 12. Performance Guidelines



\* Use const constructors wherever possible.

\* Avoid unnecessary rebuilds.

\* Lazy-load network images.

\* Reuse widgets.

\* Optimize scrolling performance.

\* Minimize nested widget trees.

\* Keep screens modular.



\---



\# 13. Security Guidelines



\* Never hardcode API keys.

\* Store secrets using environment configuration when backend integration is added.

\* Validate all form inputs.

\* Sanitize user input before API submission.



\---



\# 14. Testing Commands



Static Analysis



```bash

flutter analyze

```



Widget Tests



```bash

flutter test

```



Run All Tests



```bash

flutter test

```



\---



\# 15. Project Setup Checklist



Before development begins:



\* Flutter SDK installed.

\* Android Studio configured.

\* Android Emulator created.

\* Git repository initialized.

\* Packages installed.

\* Project architecture created.

\* Theme system implemented.

\* GitHub repository connected.

\* SDS completed.

\* PROJECT\_RULES.md added.

\* TECH\_STACK.md added.



\---



\# 16. Future Integrations



The architecture shall support:



\* REST API

\* Firebase

\* Supabase

\* Laravel Backend

\* Django Backend

\* Node.js Backend

\* GraphQL

\* Push Notifications

\* Authentication

\* Analytics

\* Crash Reporting



\---



\# Final Notes



This document serves as the project's technical reference. All development should align with the Software Design Specification (SDS) and PROJECT\_RULES.md.



If there is any conflict between generated code and these standards, the documented project architecture and coding rules take precedence.



