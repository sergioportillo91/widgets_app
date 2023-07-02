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
      child:  Column(
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
    return CircularProgressIndicator(strokeWidth: 2);
  }
}