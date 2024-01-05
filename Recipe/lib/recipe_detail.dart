import 'package:flutter/material.dart';
import 'recipes.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});

  final Recipes recipe;
  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;
  String texto_slider = '1 persons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              widget.recipe.imageURL,
              width: double.infinity,
            ),
            SizedBox(
                height: 10
            ),
            Text('${widget.recipe.label} for ${_sliderValue} persons'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (context, index) {
                      final ingredients = widget.recipe.ingredients[index];
                      return Text('${_sliderValue * ingredients.quantity} ${ingredients.measure} of ${ingredients.name}');
                    },
                ),
              ),
            ),
            Slider(
                value: _sliderValue.toDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                label: texto_slider,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                onChanged: (newvalue) {
                  print(newvalue);
                  setState(() {
                    _sliderValue = newvalue.toInt();
                    texto_slider = '${_sliderValue} persons';
                  });
                },
            )
          ],
        ),
      ),
    );
  }
}

