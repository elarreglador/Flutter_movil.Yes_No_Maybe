import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});
  
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; // color del tema actual

    final outlineInputBorder = UnderlineInputBorder( // borde del campo de texto
      borderSide: BorderSide( color: colors.primary ),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration( // decoracion del campo de texto
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () { 
            print ("Valor de la caja de texto: ");
          },
          icon: const Icon (Icons.send_outlined),
        )
      );

    // CAMPO DE TEXTO
    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submit value: $value");
      },
      onChanged: (value) {
        print("Changed: $value");
      },
    );
  }
  
}