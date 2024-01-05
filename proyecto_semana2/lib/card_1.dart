import 'package:flutter/material.dart';
import 'package:proyecto_semana2/social_food_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //Atributos de la clase

  final String category = 'Elección del Editor';
  final String title = 'El arte de Dough';
  final String description = 'Como hacer el pan perfecto';
  final String chef = 'Hugo';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Text(category,
            style: SocialFoodTheme.darkTextTheme.bodyLarge,),
            Positioned(
              top: 20,
              child: Text(title,
                style: SocialFoodTheme.darkTextTheme.displayLarge,),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,),
            ),
            Positioned(
              bottom: 10,
              right: 0,

              child: Text(chef,
                style: SocialFoodTheme.darkTextTheme.bodyLarge,),
            )
          ],
        ),
      ),
    );
  }
}
