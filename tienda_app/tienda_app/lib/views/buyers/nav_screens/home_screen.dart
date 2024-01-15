import 'package:flutter/material.dart';
import 'package:tienda_app/views/buyers/nav_screens/category_screen.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/category_text_widget.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/search_field_widget.dart';
import 'package:tienda_app/views/buyers/nav_screens/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeTextWidget(),
        SizedBox(height: 20,),
        SearchFieldWidget(),
        BannerWidget(),
        CategoryTextWidget(),
      ],
    );
  }
}




