

import 'package:dio/dio.dart';

import '../models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

       Future<List<Articlesmodel>> getGeneral({required String category}) async {
         try {
     var response = await dio.get(
         'https://gnews.io/api/v4/top-headlines?country=eg&apikey=25676ffe362449294034c77392bbb562&category=$category');

     Map <dynamic, dynamic> JsonData = response.data;
     List<dynamic> articles = JsonData['articles'];

      List<Articlesmodel> articlesList =[];
      for(var article in articles ){
        Articlesmodel Articlesmodel1=Articlesmodel(
            title: article['title'],
            image: article['image'],
            subtitel: article['description'],


        );
        articlesList.add(Articlesmodel1)  ;
      };

return articlesList;
         } catch (e) {
           return [];
         }

   }




}