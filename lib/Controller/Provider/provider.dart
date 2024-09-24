import 'package:assessment/Controller/Api.dart';
import 'package:assessment/Model/post_Model.dart';
import 'package:flutter/material.dart';

class postProvider extends ChangeNotifier{

  Api postApi = Api();
  List<PostModel> _post = [];
  bool _isloading = true;
  String? _errormsg;

  List<PostModel> get posts => _post;
  bool get isloading => _isloading;
  String? get errorMsg => _errormsg;

  Future<void> fetchPost() async {
    _isloading = true;
    notifyListeners();
    try{
      _post = await postApi.getPosts();
      _errormsg = null;
    }catch(e){
      _errormsg = e.toString();
    }finally{
      _isloading = false;
      notifyListeners();
    }
  }
  Future<void> refreshPost() async {
    await fetchPost();
  }



}