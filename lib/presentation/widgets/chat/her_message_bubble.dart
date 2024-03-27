import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {

  final Message message;

  const HerMessageBubble({
    super.key,
    required this.message
    });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column( //BURBUJA
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary, //color primario del tema
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
        const SizedBox(height: 10),

        _ImageBubble(message.imageUrl ?? '')
      ],
    );
  }
}


class _ImageBubble extends StatelessWidget {
  
  final String imageUrl;

  const _ImageBubble( this.imageUrl );

  @override
  Widget build(BuildContext context){
    // Igual que la imagen del AppBar, la imagen solo se muestra en ciertas plataformas :(
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: 150,
            padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
            child: const Text("Recibiendo una imagen..."),
          );
        },
        ),
    );
  }
}