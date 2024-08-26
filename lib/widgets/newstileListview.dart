import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/articles_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  final List<Articlesmodel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        Articlesmodel1: articles[index],
      );
    }));
  }
}
