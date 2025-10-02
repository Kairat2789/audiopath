
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text('Выберите роль', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => context.go('/home/parent'),
                child: const Text('Родитель'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => context.go('/home/specialist'),
                child: const Text('Специалист'),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => context.go('/settings'),
                child: const Text('Настройки (язык, шрифт)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
