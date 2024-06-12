import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ws_api_task/api/models/recipe.api.dart';
import 'package:ws_api_task/api/models/recipe_model.dart';
import 'package:ws_api_task/api/views/widgets/recipe_card.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({super.key});

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  List<RecipeModel> _recipes = [];
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecipies();
  }

  Future<void> getRecipies() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(
              width: 10,
            ),
            Text("Food Recipes")
          ],
        ),
      ),
      body: _isLoading
          ? Center(child: CupertinoActivityIndicator(radius: 20,))
          : ListView.builder(
              itemCount: _recipes.length,
              // TODO: make a container
              itemBuilder: (context, index) {
                return RecipeCard(
                  title: _recipes[index].name.toString(),
                  cookTime: _recipes[index].totalTime!,
                  rating: _recipes[index].rating.toString(),
                  thumbnailUrl: _recipes[index].images!,
                );
              },
            ),
    );
  }
}
