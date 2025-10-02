
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  final String lessonId;
  const LessonScreen({super.key, required this.lessonId});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  final player = AudioPlayer();
  bool? heard;
  int repeats = 0;

  Future<void> _play() async {
    await player.play(AssetSource('audio/sound_train.wav'));
    setState(() => repeats += 1);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final choices = [
      'assets/images/train.png',
      'assets/images/cow.png',
      'assets/images/drum.png',
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Урок: ${widget.lessonId}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FilledButton.icon(icon: const Icon(Icons.play_arrow), label: const Text('Проиграть звук'), onPressed: _play),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12, runSpacing: 12,
              children: choices.map((path) => GestureDetector(
                onTap: () {
                  final correct = path.contains('train');
                  setState(() => heard = correct);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(correct ? 'Верно! 🚂' : 'Попробуем ещё 🙂'))
                  );
                },
                child: Container(
                  width: 100, height: 100,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(path, fit: BoxFit.contain),
                ),
              )).toList(),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: OutlinedButton.icon(
                  icon: const Icon(Icons.hearing_disabled),
                  label: const Text('Не услышал'),
                  onPressed: () => setState(() => heard = false),
                )),
                const SizedBox(width: 8),
                Expanded(child: FilledButton.icon(
                  icon: const Icon(Icons.hearing),
                  label: const Text('Услышал'),
                  onPressed: () => setState(() => heard = true),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
