import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../screens/category_screen.dart';

class CategCard extends StatelessWidget {
  const CategCard({super.key, required this.cate});
  final CategoryModel cate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){

           return  CategoryView(
               category:cate.categoryname,
           );
          }
          )
          );
        },

        child:  Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, top: 10),
        child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(cate.image),
                  fit: BoxFit.fill,
                )),
            child: Center(
              child: Text(
                cate.categoryname,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ))));
  }
}
