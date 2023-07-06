import 'dart:ffi';

import 'package:flutter/material.dart';

class UIControlsScreen extends StatefulWidget {
  
  static const name = 'ui_controls_screen';

  const UIControlsScreen({super.key});

  @override
  State<UIControlsScreen> createState() => _UIControlsScreenState();
}

enum PersonajeFavorito {superman,goku,ironman,spiderman}

class _UIControlsScreenState extends State<UIControlsScreen> {

  bool isDarkMode = true;

  PersonajeFavorito selectedPersonaje= PersonajeFavorito.goku;

  bool pedirDesayuno = false;

  bool pedirAlmuerzo = false;

   bool pedirCena = false;

  String personaje(PersonajeFavorito personaje){

    switch (personaje) {
      case PersonajeFavorito.goku:
          return "Goku";
      case PersonajeFavorito.spiderman:
          return "Spiderman";
      case PersonajeFavorito.superman:
          return "Superman";
      case PersonajeFavorito.ironman:
          return "Ironman";
      default:
        return "Goku";
    }

  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text('Ui Controls '),
        ),
        body:ListView(
          children: [
            SwitchListTile(
            title: const Text('Dark mode'),
            subtitle: const Text('activate dark mode'),
            value: isDarkMode, 
            onChanged: (value){
              isDarkMode = value;
              setState(() {
            
              });
            }),

          ExpansionTile(
            title: const Text('Personaje Favorito'),
            subtitle: Text(personaje(selectedPersonaje)),
            children: [
                RadioListTile(
            title: const Text('Goku'),
            value: PersonajeFavorito.goku , 
            groupValue: selectedPersonaje, 
            onChanged: (value){
                selectedPersonaje = PersonajeFavorito.goku;
                setState(() {
                  
                });
            }),

            RadioListTile(
            title: const Text('Ironman'),
            value: PersonajeFavorito.ironman, 
            groupValue: selectedPersonaje, 
            onChanged: (value){
                selectedPersonaje = PersonajeFavorito.ironman;
                setState(() {
                  
                });
            }),

            RadioListTile(
            title: const Text('Spiderman'),
            value: PersonajeFavorito.spiderman, 
            groupValue: selectedPersonaje, 
            onChanged: (value){
                selectedPersonaje = PersonajeFavorito.spiderman;
                setState(() {
                  
                });
            }),

            RadioListTile(
            title: const Text('Superman'),
            value: PersonajeFavorito.superman, 
            groupValue: selectedPersonaje, 
            onChanged: (value){
                selectedPersonaje = PersonajeFavorito.superman;
                setState(() {
                  
                });
            }),

            ],
            ),

            
        ExpansionTile(title: const Text("Servicios de habitación"),
          children: [
              CheckboxListTile(
                title: const Text('Desayuno'),
                value: pedirDesayuno, 
                onChanged: (value){
                    pedirDesayuno = !pedirDesayuno;
                    setState(() {
                      
                    });
              }),

              CheckboxListTile(
                title: const Text('Almuerzo'),
                value: pedirAlmuerzo, 
                onChanged: (value){
                  pedirAlmuerzo = !pedirAlmuerzo;

                  setState(() {
                    
                  });
              }),

              CheckboxListTile(
                title: const Text('Cena'),
                value: pedirCena, 
                onChanged: (value){
                  pedirCena = !pedirCena;

                  setState(() {
                    
                  });
              }),

          ],
        )
          ],
        ),
      );
  }
}