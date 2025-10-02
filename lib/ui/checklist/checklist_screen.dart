
import 'package:flutter/material.dart';

class ChecklistScreen extends StatefulWidget {
  final String checklistId;
  const ChecklistScreen({super.key, required this.checklistId});

  @override
  State<ChecklistScreen> createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  final Map<String, String> status = {};

  @override
  Widget build(BuildContext context) {
    final items = List.generate(8, (i) => ('item_$i', 'Пункт обследования ${i+1}'));
    return Scaffold(
      appBar: AppBar(title: Text('Чек-лист: ${widget.checklistId}')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final (id, title) = items[i];
          final s = status[id];
          return ListTile(
            title: Text(title),
            subtitle: Text(s == 'done' ? 'Выполнено' : s == 'na' ? 'Нельзя оценить' : '—'),
            trailing: PopupMenuButton<String>(
              onSelected: (v) => setState(() => status[id] = v),
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'done', child: Text('Выполнено')),
                PopupMenuItem(value: 'na', child: Text('Нельзя оценить')),
                PopupMenuItem(value: '', child: Text('Сбросить')),
              ],
              child: const Icon(Icons.more_vert),
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Сохранено')));
        },
        icon: const Icon(Icons.save),
        label: const Text('Сохранить'),
      ),
    );
  }
}
