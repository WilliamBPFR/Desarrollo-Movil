import 'package:chat_1/entities/message.dart';
import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;

  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; //Obtengo el schema de colores definido en el padre.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: colors.secondary, //Color primario que el usuario eligió
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Text(message.text,
                style: TextStyle(
                  color: Colors.white,
                ),),
            )
        ),
        SizedBox(
          height: 5.0,
        ),
        ImageBubble(imageUrl: message.imageURL,),
        SizedBox(height: 5,)
      ],
    );
  }
}


class ImageBubble extends StatelessWidget {
  final String imageUrl;
  const ImageBubble({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(imageUrl,
        width: size.width*0.70,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null){
            return child;
          }else{
            return Container(
              width: size.width*0.70,
              height: 150,
              child: Text('Writing Message'),
            );
          }
        },
      ),
    );
  }
}
