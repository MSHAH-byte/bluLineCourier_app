\# DESIGN\_SYSTEM.md



\# BluLine Courier Flutter Application



\*\*Version:\*\* 1.0



\---



\# 1. Purpose



This document defines the visual language of the BluLine Courier Flutter application. Every screen, widget, and component shall follow these specifications to ensure a consistent user experience.



\---



\# 2. Design Philosophy



The application follows a \*\*modern logistics dashboard aesthetic\*\* emphasizing reliability, professionalism, and readability.



Core principles:



\* Dark premium interface

\* High contrast

\* Strong typography

\* Minimalistic cards

\* Clear hierarchy

\* Large touch targets

\* Responsive layouts



\---



\# 3. Color Palette



\## Primary Colors



| Token                | Approx. Value | Usage                   |

| -------------------- | ------------- | ----------------------- |

| Primary Background   | #0B131F       | App background          |

| Secondary Background | #161F30       | Cards \& Sections        |

| Surface              | #1E293B       | Containers              |

| Primary Accent       | #F5A623       | Buttons, Highlights     |

| Interactive Blue     | #1D4ED8       | FAQ, Interactive Blocks |



\---



\## Text Colors



| Token          | Value   |

| -------------- | ------- |

| Primary Text   | #FFFFFF |

| Secondary Text | #94A3B8 |

| Disabled Text  | #64748B |

| Accent Text    | #F5A623 |



\---



\## Semantic Colors



| Token   | Purpose |

| ------- | ------- |

| Success | Green   |

| Warning | Orange  |

| Error   | Red     |

| Info    | Blue    |



\---



\# 4. Typography



\## Font Family



Preferred:



\* Inter



Fallback:



\* Roboto



\---



\## Typography Scale



| Style      | Weight   | Usage          |

| ---------- | -------- | -------------- |

| Display    | Bold     | Hero           |

| H1         | Bold     | Main headings  |

| H2         | SemiBold | Section titles |

| H3         | SemiBold | Card headings  |

| Body Large | Medium   | Important text |

| Body       | Regular  | Normal content |

| Caption    | Regular  | Labels         |

| Button     | SemiBold | CTA buttons    |



\---



\# 5. Spacing System



Never use raw spacing values.



Use:



| Token   | Value |

| ------- | ----- |

| xs      | 4     |

| sm      | 8     |

| md      | 16    |

| lg      | 24    |

| xl      | 32    |

| xxl     | 48    |

| section | 64    |



\---



\# 6. Radius System



| Token  | Value |

| ------ | ----- |

| Small  | 6     |

| Medium | 8     |

| Large  | 12    |

| XL     | 16    |

| Pill   | 999   |



\---



\# 7. Elevation



The UI follows a flat design.



Use subtle shadows only.



Primary elevation is created using contrasting surface colors.



\---



\# 8. Buttons



\## Primary Button



\* Filled

\* Accent Yellow

\* Dark Text

\* Medium Radius

\* Bold Typography



\## Secondary Button



\* Transparent

\* Border

\* White Text

\* Medium Radius



\## Text Button



\* No background

\* Accent text color



\---



\# 9. Cards



Dark Cards



\* Secondary Background

\* Rounded Corners

\* Internal Padding

\* No heavy shadows



Light Cards



\* White Background

\* Rounded Corners

\* Used for content-heavy sections



\---



\# 10. Forms



Every form shall use:



\* Consistent labels

\* Medium border radius

\* Uniform padding

\* Error styling

\* Focus styling



Reusable widgets:



\* AppTextField

\* AppDropdown

\* AppTextArea



\---



\# 11. Icons



Preferred format:



\* SVG



Sizes:



\* Small

\* Medium

\* Large



Use centralized sizing constants.



\---



\# 12. Images



Image Types:



\* Hero Images

\* Service Images

\* Logos

\* Illustrations



Use `cached\_network\_image` for remote assets.



\---



\# 13. Layout System



Horizontal Padding



\* Consistent across all pages



Vertical Rhythm



\* Based on spacing scale



Grid



\* Responsive multi-column layout



\---



\# 14. Responsive Rules



Support:



\* Small Phones

\* Medium Phones

\* Large Phones

\* Tablets



Avoid fixed dimensions where possible.



\---



\# 15. Motion



Animation Duration



\* Fast

\* Normal

\* Slow



Default:



200–300 ms



Animations should be subtle and purposeful.



\---



\# 16. Flutter Theme Files



```text

lib/core/theme/



app\_colors.dart

app\_text\_styles.dart

app\_spacing.dart

app\_radius.dart

app\_shadows.dart

app\_durations.dart

app\_theme.dart

```



\---



\# Final Rule



Every design decision shall originate from this document. No widget may introduce custom styling outside the centralized theme.



