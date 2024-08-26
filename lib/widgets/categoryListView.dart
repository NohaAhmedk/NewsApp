import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> cate =const [
    CategoryModel(
      image: 'assets/business.jpeg',
      categoryname: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.jpeg',
      categoryname: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/general.jpeg',
      categoryname: 'general',
    ),
    CategoryModel(
      image: 'assets/health.jpeg',
      categoryname: 'health',
    ),
    CategoryModel(
      image: 'assets/sinence.jpeg',
      categoryname: 'science',
    ),
    CategoryModel(
      image: 'assets/sport.jpeg',
      categoryname: 'sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryname: 'technology',
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child:  ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cate.length,
            itemBuilder: (context, index) {
              return  CategCard(cate:cate[index] );
            })
    );
  }
}
