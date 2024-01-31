import 'package:flutter/material.dart';
import 'package:food_recipe/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Food Recipe')
          ],
        ),
      ),
      body: RecipeCard(title: 'my recipe', cookTime: "30 min", rating: '4.3', thumbnailUrl: "https://media.istockphoto.com/id/1191080960/photo/traditional-turkish-breakfast-and-people-taking-various-food-wide-composition.jpg?b=1&s=612x612&w=0&k=20&c=W93OudYpERD4ySawYhVoKjWJqf4PP4Ik_AutQKFVBBk="),
    );
  }
}