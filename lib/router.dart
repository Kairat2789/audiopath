
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'ui/onboarding/onboarding_screen.dart';
import 'ui/home/home_parent.dart';
import 'ui/home/home_specialist.dart';
import 'ui/lesson/lesson_screen.dart';
import 'ui/progress/progress_screen.dart';
import 'ui/checklist/checklist_screen.dart';
import 'ui/library/library_screen.dart';
import 'ui/child/child_profile_screen.dart';
import 'ui/settings/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(path: '/onboarding', builder: (_, __) => const OnboardingScreen()),
    GoRoute(path: '/home/parent', builder: (_, __) => const HomeParentScreen()),
    GoRoute(path: '/home/specialist', builder: (_, __) => const HomeSpecialistScreen()),
    GoRoute(path: '/lesson/:id', builder: (_, s) => LessonScreen(lessonId: s.pathParameters['id']!)),
    GoRoute(path: '/progress', builder: (_, __) => const ProgressScreen()),
    GoRoute(path: '/checklist/:id', builder: (_, s) => ChecklistScreen(checklistId: s.pathParameters['id']!)),
    GoRoute(path: '/library', builder: (_, __) => const LibraryScreen()),
    GoRoute(path: '/child/:id', builder: (_, s) => ChildProfileScreen(childId: s.pathParameters['id']!)),
    GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
  ],
);
