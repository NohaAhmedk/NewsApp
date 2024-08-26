import 'package:flutter/material.dart';
import '../widgets/beilder.dart';
import '../widgets/categoryListView.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body:Padding(padding:EdgeInsets.symmetric(horizontal: 5) ,
        child:CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child:CategoryListView(), 
            ),
            SliverToBoxAdapter(
              child:SizedBox(
                height: 32,
              ),
            ),
            BeilderNewsListView(
                category: 'general'
            ),
          ],
        )

        ));
  }
}

