import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({
    super.key, 
    required this.message
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column( //BURBUJA
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary, //color primario del tema
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text( 
              message.text, 
              style: const TextStyle(
                color: Colors.white
              ),),
          )
        ),

        // Separador entre mensajes
        const SizedBox(height: 10)
      ],
    );
  }
}