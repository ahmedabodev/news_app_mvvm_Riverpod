import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/core/widget/data_widget.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/featch_home_revipoid.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/open_link.dart';

class ListviewHome extends StatelessWidget {
  const ListviewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,  ref, Widget? child) {
      final home=ref.watch(fetchHomeRiverpod);
      return (home.home==null)?const SizedBox(): Expanded(child: ListView.builder(

        itemCount: home.home!.arc.length,
        itemBuilder: (BuildContext context, int index) {
          return  InkWell(
            onTap: (){
              Func.openLink(link: home.home!.arc[index].url.toString());
            },
            child: DataWidget(
              title: home.home!.arc[index].title.toString() ,
              image:home.home!.arc[index].urlToImage.toString()  ,
              author:home.home!.arc[index].author.toString()  ,
              publishedAt:home.home!.arc[index].publishedAt.substring(0, 10).toString()  ,
            ),
          );

        },));
    },);
  }

}
