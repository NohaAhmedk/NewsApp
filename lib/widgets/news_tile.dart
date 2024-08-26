import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/screens/news_page.dart';
import '../models/articles_model.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.Articlesmodel1, });
  final  Articlesmodel  Articlesmodel1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){

          return  NewsPage(Articlesmodel1:Articlesmodel1);
        }
        )
        );
      },
     child: Padding(padding:EdgeInsets.all(8) ,
      child:
      Column(

      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(Articlesmodel1.image??
            'https://images.pexels.com/photos/669615/pexels-photo-669615.jpeg',


            height: 250,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          child:  Text(
            Articlesmodel1.title,
           maxLines: 3,
           overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),

    ),

  Padding(padding:EdgeInsets.only(bottom: 20) ,
    child:
        SizedBox(
          child: Text(
            Articlesmodel1.subtitel ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

        ))
      ],
      )));
  }
}
