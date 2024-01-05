import 'package:flutter/material.dart';

class Etiquetas extends StatelessWidget {
  const Etiquetas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 12,
        children: List.generate(7, (index) {
          return Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: BorderSide(color: Colors.grey,width: 2),
            ),
            avatar: Icon(
                Icons.card_giftcard,
                color: Colors.blueAccent,
            ),
            label: Text("Gift ${index+1}"),
          );
        }),
      ),
    );
  }
}
