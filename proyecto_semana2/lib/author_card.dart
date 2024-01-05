import 'package:flutter/material.dart';
import 'package:proyecto_semana2/social_food_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key});

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  final String nombre_usuario = "Mike Katz";
  final String nombre_producto = "Smoothie Connoisseur";
  bool favorito = false;

  void ChangedFavorite(){
    setState(() {
      favorito = !favorito;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child:
          Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('author_katz.jpeg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nombre_usuario,
                          style: SocialFoodTheme.lightTextTheme.displayMedium),
                        Text(nombre_producto,
                            style: SocialFoodTheme.lightTextTheme.bodyLarge),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: ()=>{
                        ChangedFavorite()
                      },
                      icon: favorito ?
                        Icon(
                          Icons.favorite  ,
                          color: Colors.black,
                      ) :
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )
                  )
                ]
              )
            ],
          ),
      ),
    );
  }
}
