import 'dart:convert';

import 'package:food_recipe/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
//   const req = unirest('GET', 'https://yummly2.p.rapidapi.com/feeds/list');

// req.query({
// 	limit: '24',
// 	start: '0'
// });

// req.headers({
	// 'X-RapidAPI-Key': '7b05d9ff28msh425c699f2f94eb0p1588f9jsn43d047c83258',
	// 'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
// });

  static Future<List<Recipe>> getRecipe() async{
    var uri = Uri.http("yummly2.p.rapidapi.com", "/feeds/list",{
      "limit":"18", "start":"0","tag":"list.recipe.popular"
    });

    final response = await http.get(uri, headers: {
  'X-RapidAPI-Key': '7b05d9ff28msh425c699f2f94eb0p1588f9jsn43d047c83258',
	'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    return Recipe.recipesFromSnapshot(_temp);
  }
}