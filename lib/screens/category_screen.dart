
import '../widgets/beilder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child:  Text(
          category,
          style: TextStyle(

            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      )),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          BeilderNewsListView(
              category: category
          ),
        ],
      ),

    );
  }
}
