import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Sunt amet nulla ad laborum sint do do velit aliqua laborum.', 
              style: TextStyle(
                color: Colors.white
              ),),
          )
        ),

        // Separador entre mensajes
        const SizedBox(height: 10),

        const _ImageBubble()
      ],
    );
  }
}


class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context){
    // Igual que la imagen del AppBar, la imagen solo se muestra en ciertas plataformas :(
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif',
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