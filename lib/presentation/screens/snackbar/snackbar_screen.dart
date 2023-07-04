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

  void mostrarDialog(BuildContext context){
    showDialog(
    barrierDismissible: false,
    context: context, 
    builder: (context) => AlertDialog(
      title: const Text('Titulo del dialogo'),
      content: const Text('Veniam Lorem laboris eiusmod ullamco enim voluptate enim magna laboris ea Lorem dolor veniam mollit. Consectetur proident exercitation adipisicing ipsum aliqua adipisicing ex reprehenderit elit deserunt nostrud labore. Ullamco aliquip magna in id culpa nisi eiusmod consectetur irure anim commodo magna consequat ea. Id laboris dolore consectetur sit pariatur nulla nisi qui do sit aute sunt reprehenderit ipsum. Adipisicing qui nostrud cupidatat minim sunt dolore dolore quis laboris adipisicing anim eiusmod.'),
      actions: [
        TextButton(onPressed: ()=> Navigator.pop(context), 
        child: const Text('Close')),
        FilledButton(onPressed: ()=> Navigator.pop(context), 
        child: const Text('ok'))
      ],
    ));
  }
  
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars'),
        ),
        body: Column(
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,children: [
                const Text('este es el texto del cuerpo del dialogo')
              ]);
            }, 
            child: const Text('Licencias usadas')),
            const SizedBox(height: 20,),
            FilledButton.tonal(onPressed: ()=> mostrarDialog(context), 
            child: const Text('Mostrar Dialogo'))
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showSnackBar(context),
          label: const Text('Mostrar snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          ),
      );
  }
  
}