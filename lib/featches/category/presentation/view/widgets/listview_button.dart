import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/featches/category/presentation/view_model/fetch_category_revipoid.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/open_link.dart';

import '../../../../../core/utils/style.dart';

class ListviewCategoryButton extends StatelessWidget {
  const ListviewCategoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer(builder: (BuildContext context,  ref, Widget? child) {
      final home=ref.watch(fetchCategoryRevipoid);
      return (home.home==null)?const SizedBox(): SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: home.myCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return  InkWell(
                onTap: (){
                  Func.openLink(link: home.home!.arc[index].url.toString());
                },
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: (){
                      home.changeCategory(index);
                      home.scrollDown();
                    },
                    height: 48,
                    color:(home.index!=index)?Colors.blueGrey: Colors.indigoAccent,
                    child: Text(home.myCategory[index],style: Styles.textStyle14,),
                  ),
                ),
              );

            },));
    },);
  }

}
