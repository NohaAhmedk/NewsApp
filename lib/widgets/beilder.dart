import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/articles_model.dart';
import '../service/news sevice.dart';
import 'newstileListview.dart';

class BeilderNewsListView extends StatefulWidget {
  const BeilderNewsListView({super.key, required this.category});
final String category;
  @override
  State<BeilderNewsListView> createState() => _BeilderNewsListViewState();
}

class _BeilderNewsListViewState extends State<BeilderNewsListView> {
    var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future= NewsService(Dio()).getGeneral(
        category:widget.category
    );
  }
  @override

  Widget build(BuildContext context) {
    return FutureBuilder <List<Articlesmodel>>(
        future:  future,
    builder: (context,Snapshot){
        if(Snapshot.hasData) {
          return NewsListView(
              articles: Snapshot.data!,
          );
        }
        else if(Snapshot.hasError){
        return  SliverToBoxAdapter(child:Center(child: Text("try again"),) ,);
        }
        else{
         return SliverToBoxAdapter(child:Center(child: CircularProgressIndicator(),) ,);
        }

    });
    }

}
