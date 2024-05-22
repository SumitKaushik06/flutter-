import 'dart:developer';

import 'package:cubit_login/Data/Respositories/API/API.dart';
import 'package:dio/dio.dart';

class PostRepository{

  API api =API();
  Future<void> fetchPosts () async {


    try{
    Response response=    await   api.sendRequest.get("/posts");
      log(response.data);
    }catch(ex){
      throw ex;
    }
  }
}