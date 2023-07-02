import 'package:flutter/material.dart';

class ProgressIndicatosScreen extends StatelessWidget {
  static const name = 'progress_indicator_screen';

  const ProgressIndicatosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 30),
          Text('Circular progress indicator controlado'),
          SizedBox(height: 10),
          _ControlProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlProgressIndicator extends StatelessWidget {
  const _ControlProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return value * 2 / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {

          final progressValue = snapshot.data ?? 0;

          return  Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                    value:progressValue, strokeWidth: 2, backgroundColor: Colors.black),
                const SizedBox(width: 120),
                Expanded(child: LinearProgressIndicator(value: progressValue))
              ],
            ),
          );
        });
  }
}
