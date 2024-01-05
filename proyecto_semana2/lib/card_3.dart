import 'package:flutter/material.dart';
import 'package:proyecto_semana2/social_food_theme.dart';
import 'author_card.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

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
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken
                ),
                image: AssetImage('assets/mag2.png'),
                fit: BoxFit.cover,
              )
          ),
          child: Stack(
            children: [
              Positioned(
                top: 3,
                child: Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  )
                ),
              Positioned(
                top: 45,
                child: Text("Recipe Trends",
                  style: SocialFoodTheme.darkTextTheme.displayLarge,
                ),
              ),
              Positioned(
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        Chip(
                            label: Text("Healthy"),
                            onDeleted: (){},
                        ),
                        Chip(
                          label: Text("Vegan"),
                          onDeleted: (){},
                        ),
                        Chip(
                          label: Text("Carrots"),
                        ),
                        Chip(
                          label: Text("Carrots"),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}