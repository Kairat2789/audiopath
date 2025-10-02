
import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Прогресс ребёнка')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Календарь занятий'),
            subtitle: Text('Отметки и заметки по дням'),
          ),
          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text('Достижения'),
            subtitle: Text('Звёздочки за серии успехов'),
          ),
        ],
      ),
    );
  }
}
