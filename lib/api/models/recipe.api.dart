import 'dart:convert';


import 'package:http/http.dart' as http ;
import 'package:ws_api_task/api/models/recipe_model.dart';

class RecipeApi{

  static Future<List<RecipeModel>> getRecipe () async{

    /*/// method 1
    var url = "https://yummly2.p.rapidapi.com/feeds/list?limit=24&start=0";
    var endPoint = Uri.parse(url);
    print(endPoint);
    /// by Ws class
     */

    /// we use this method as per tutorial
    /// method 2
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "1"});

    final response = await http.get(uri,headers: {
      "x-rapidapi-key": "e278fd3af4msh5836a2949785cb8p184d2bjsnb0e55f591154",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    print("Status code : ${response.statusCode}");
    var data = jsonDecode(response.body);

    List tempData = [];

    for(var i in data['feed']){
      tempData.add(i['content']['details']);
    }

    return RecipeModel.recipesFromSnapshot(snapshot: tempData);


  }
}