
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: ListView(
        children: [
          const ListTile(title: Text('Язык')),
          ListTile(
            title: const Text('Қазақша'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Русский'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Кешировать уроки офлайн'),
            value: true,
            onChanged: (v) {},
          ),
          ListTile(
            title: const Text('Размер шрифта'),
            subtitle: const Text('Стандартный'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Обратная связь'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
