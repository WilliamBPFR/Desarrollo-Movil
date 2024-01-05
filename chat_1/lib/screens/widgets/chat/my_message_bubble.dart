import 'package:flutter/material.dart';

import '../../../entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;

  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; //Obtengo el schema de colores definido en el padre.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary, //Color primario que el usuario eligió
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
        )
      ],
    );
  }
}
