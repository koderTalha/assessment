import 'dart:convert';
import 'package:assessment/Model/post_Model.dart';
import 'package:http/http.dart'as http;

class Api{
  Future<List<PostModel>> getPosts() async {
   try{
     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
     if(response.statusCode == 200){
       List result = json.decode(response.body);
       return result.map((data) => PostModel.fromJson(data)).toList();
     }
     else{
       throw Exception("Failed to Load post: ${response.statusCode}");
     }
   }catch(e){
     throw Exception("Failed to Load post: ${e.toString()}");
   }
  }
  
}