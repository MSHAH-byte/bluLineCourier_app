\# PROJECT\_RULES.md



\# BluLine Courier Flutter Application



Version: 1.0



\---



\# Purpose



This document defines the engineering standards, architecture rules, coding conventions, and AI development guidelines for the BluLine Courier Flutter application.



Every contributor (developer or AI assistant) must follow these rules throughout the project.



\---



\# 1. General Principles



The project shall follow:



\* Clean Architecture

\* SOLID Principles

\* DRY (Don't Repeat Yourself)

\* Separation of Concerns

\* Feature-First Architecture

\* Backend Independence

\* Modular Development

\* Composition over Inheritance



\---



\# 2. Technology Stack



Framework: Flutter



Language: Dart



State Management: Riverpod



Navigation: GoRouter



Architecture: Feature First + Repository Pattern



Dependency Injection: Riverpod



Version Control: Git



\---



\# 3. Folder Structure



```

lib/



app/

core/

shared/

features/



main.dart

```



Every feature shall contain:



```

feature/



presentation/

widgets/

providers/

models/

repository/

```



\---



\# 4. Naming Convention



Files



```

snake\_case.dart

```



Classes



```

PascalCase

```



Variables



```

camelCase

```



Providers



```

camelCaseProvider

```



Models



```

PascalCaseModel

```



Repositories



```

PascalCaseRepository

```



\---



\# 5. Widget Rules



Every repeated UI must become a reusable widget.



Never duplicate widgets.



Maximum widget size: approximately 200 lines. Extract child widgets when complexity increases.



Prefer StatelessWidget unless state is required.



Keep widgets focused on a single responsibility.



\---



\# 6. Theme Rules



Never hardcode:



\* Colors

\* Typography

\* Border Radius

\* Shadows

\* Padding

\* Margins

\* Animation Duration



Always use:



```

AppColors

AppTextStyles

AppSpacing

AppRadius

AppShadows

AppDurations

```



\---



\# 7. Responsive Design Rules



Support:



\* Small Phones

\* Medium Phones

\* Large Phones

\* Tablets



Avoid fixed widths and heights unless required.



Prefer:



\* Expanded

\* Flexible

\* LayoutBuilder

\* MediaQuery

\* Wrap



Maintain consistent spacing across screen sizes.



\---



\# 8. State Management



Use Riverpod only.



State belongs in providers.



Widgets should remain as stateless as practical.



Business logic must never exist inside UI widgets.



\---



\# 9. Repository Rules



UI



↓



Provider



↓



Repository



↓



Datasource



↓



Future Backend



Never call APIs directly from screens.



Never access databases from widgets.



\---



\# 10. Code Quality



Code must:



\* Compile successfully

\* Pass Flutter Analyze

\* Follow Dart formatting

\* Avoid duplicate logic

\* Remove unused imports

\* Use meaningful variable names



\---



\# 11. Performance Rules



Minimize widget rebuilds.



Use const constructors whenever possible.



Split large widgets.



Lazy-load images where appropriate.



Avoid unnecessary nested widgets.



\---



\# 12. UI Consistency



The Flutter application must visually match the BluLine Courier website.



Maintain:



\* Colors

\* Typography

\* Button styles

\* Card styles

\* Spacing

\* Icons

\* Layout hierarchy



Do not redesign the interface.



Recreate it faithfully.



\---



\# 13. Asset Rules



Organize assets as:



```

assets/



images/

icons/

logos/

animations/

illustrations/

fonts/

```



Asset filenames:



```

hero\_banner.png



company\_logo.svg



medical\_service.webp

```



\---



\# 14. Git Rules



Branch names



```

main



develop



feature/home



feature/services



feature/contact



bugfix/navigation

```



Commit messages



```

feat:



fix:



refactor:



docs:



style:



test:



chore:

```



Example



```

feat: implement reusable service card



fix: correct drawer animation



refactor: extract hero section

```



\---



\# 15. AI Rules



When using ChatGPT, Gemini, Antigravity, or GitHub Copilot:



Always:



\* Follow project architecture.

\* Reuse existing widgets.

\* Use AppTheme.

\* Follow folder structure.

\* Generate production-ready code.

\* Write readable code.

\* Keep functions focused.

\* Use meaningful names.



Never:



\* Hardcode colors.

\* Hardcode spacing.

\* Duplicate widgets.

\* Change architecture.

\* Add unnecessary packages.

\* Mix UI with business logic.

\* Introduce breaking changes without approval.



\---



\# 16. AI Prompt Template



Every AI prompt should follow this format:



Task:



Describe exactly what to build.



Requirements:



\* Use Riverpod.

\* Use GoRouter.

\* Follow PROJECT\_RULES.md.

\* Follow SDS.

\* Use AppTheme only.

\* No hardcoded values.

\* Responsive.

\* Modular.

\* Backend independent.

\* Production-ready.

\* Return complete Flutter code only.



\---



\# 17. Code Review Checklist



Before every commit verify:



☐ Flutter Analyze passes



☐ Flutter Format applied



☐ No layout overflow



☐ Responsive



☐ Theme used correctly



☐ No duplicated widgets



☐ Navigation tested



☐ Forms validated



☐ Images optimized



☐ Code reviewed



\---



\# 18. Definition of Done



A feature is complete only when:



\* UI matches the website.

\* Code follows architecture.

\* Theme is used correctly.

\* Responsive layout verified.

\* Reusable widgets extracted.

\* No analyzer issues.

\* No debug prints.

\* No TODO placeholders.

\* Ready for backend integration.



\---



\# Final Rule



If any AI-generated code conflicts with this document or the SDS, this document takes precedence.



Consistency, maintainability, and production readiness are more important than generating code quickly.



