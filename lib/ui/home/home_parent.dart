
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeParentScreen extends StatelessWidget {
  const HomeParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = const [
      ('Слуховые реакции', Icons.hearing),
      ('Звуки', Icons.music_note),
      ('Слоги', Icons.format_size),
      ('Слова', Icons.chat_bubble),
      ('Фразы', Icons.forum),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Домашняя программа')),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Домой'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Прогресс'),
          NavigationDestination(icon: Icon(Icons.menu_book), label: 'Библиотека'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Настройки'),
        ],
        onDestinationSelected: (i) {
          if (i == 1) context.go('/progress');
          if (i == 2) context.go('/library');
          if (i == 3) context.go('/settings');
        },
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final e = modules[i];
          return ListTile(
            leading: Icon(e.$2),
            title: Text(e.$1),
            subtitle: const Text('Пошаговый путь и задания'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () { context.go('/lesson/${e.$1}'); },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: modules.length,
      ),
    );
  }
}
