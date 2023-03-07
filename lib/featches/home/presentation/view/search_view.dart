import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../view_model/featch_home_revipoid.dart';
import 'widgets/listview_home.dart';
import 'widgets/testfrom_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) { 
      final item=ref.watch(fetchHomeRiverpod);
      return WillPopScope(
        onWillPop: ()async{
          if(item.search=='general'){
          }else{
            item.changeSearch('general');
          }

          return true;
        },
        child: Scaffold(

          body: SafeArea(
              child:
              Column(
                children: const [
                  SizedBox(height: 5,),
                  TextFormSearch(),
                  ListviewHome(),
                ],
              )
          ),
        ),
      );
    },);
  }
}


