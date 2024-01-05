import 'package:flutter/material.dart';
import 'package:proyecto_semana2/social_food_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          constraints: BoxConstraints.expand(
              height: 450,
              width: 350
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover,
              )
          ),
          child: Column(
            children: [
              AuthorCard(),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 3,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text("Smoothies",
                          style: SocialFoodTheme.lightTextTheme.displayLarge,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 20,
                      child: Text("Recipe",
                        style: SocialFoodTheme.lightTextTheme.displayLarge,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}