import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showSnackBar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar =  SnackBar(content: const Text('Hello world!'),
    action: SnackBarAction(label: 'OK', onPressed: (){}),
    duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  }
  
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showSnackBar(context),
          label: const Text('Mostrar snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          ),
      );
  }
  
}