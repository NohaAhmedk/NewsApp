

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/articles_model.dart';
import '../widgets/news_tile.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.Articlesmodel1});
  final  Articlesmodel  Articlesmodel1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NEWS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      body:Center(child:  NewsTile(Articlesmodel1: Articlesmodel1,),)

    );
  }
}
