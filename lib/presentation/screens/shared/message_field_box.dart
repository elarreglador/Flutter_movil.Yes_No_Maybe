import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});
  
  @override
  Widget build(BuildContext context) {

    final textControll = TextEditingController();

    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme; // color del tema actual

    final outlineInputBorder = UnderlineInputBorder( // borde del campo de texto
      borderSide: BorderSide( color: colors.primary ),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration( // decoracion del campo de texto
      hintText: "Finaliza tu mensaje con un '?'",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () { 
          final textValue = textControll.value.text;
          print ("Valor de la caja de texto: $textValue");
          textControll.clear();
        },
        icon: const Icon (Icons.send_outlined),
      )
    );

    // CAMPO DE TEXTO
    return TextFormField(
      onTapOutside: (event){ //retira el foco si clicamos fuera
        focusNode.unfocus();
      },
      focusNode: focusNode, //tiene el foco
      controller: textControll,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submit value: $value");
        textControll.clear();
        focusNode.requestFocus(); //recupera el foco tras enviar mensaje
      },
    );
  }
  
}