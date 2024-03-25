import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue
    });
  
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
          textControll.clear();
          onValue(textValue);
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
        textControll.clear();
        focusNode.requestFocus(); //recupera el foco tras enviar mensaje
        onValue(value);
      },
    );
  }
  
}