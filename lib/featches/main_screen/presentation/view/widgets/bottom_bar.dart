import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/featches/main_screen/presentation/view_model/main_bottom_bar_revirpoid.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (BuildContext context,  ref, Widget? child) {
      final main=ref.watch(mainBottomBarRevirpoid);
      return BottomNavigationBar(
        onTap: (value){
          main.changeindex(value);
        },
        selectedItemColor: Colors.indigoAccent,
        currentIndex: main.index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              label: 'Category',
              icon: Icon(Icons.category)
          ),
        ],
      );
    },);
  }
}
