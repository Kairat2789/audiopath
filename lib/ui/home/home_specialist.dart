
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeSpecialistScreen extends StatelessWidget {
  const HomeSpecialistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = const [
      ('Алгоритмы обследования', '/library'),
      ('Чек-листы', '/checklist/baseline'),
      ('Протоколы', '/library'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Специалист')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final (title, route) = items[i];
          return ListTile(
            leading: const Icon(Icons.medical_information_outlined),
            title: Text(title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go(route),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: items.length,
      ),
    );
  }
}
