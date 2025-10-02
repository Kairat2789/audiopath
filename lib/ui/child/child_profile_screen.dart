
import 'package:flutter/material.dart';

class ChildProfileScreen extends StatelessWidget {
  final String childId;
  const ChildProfileScreen({super.key, required this.childId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профиль ребёнка')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Имя/ник'), subtitle: Text('Аружан')),
          ListTile(title: Text('Возраст'), subtitle: Text('3 года 2 мес')),
          ListTile(title: Text('Слуховой статус/КИ'), subtitle: Text('КИ справа')),
          ListTile(title: Text('Цели'), subtitle: Text('Звуки → Слоги → Первые слова')),
          ListTile(title: Text('Рекомендации'), subtitle: Text('Ежедневные короткие занятия 10–15 мин')),
        ],
      ),
    );
  }
}
