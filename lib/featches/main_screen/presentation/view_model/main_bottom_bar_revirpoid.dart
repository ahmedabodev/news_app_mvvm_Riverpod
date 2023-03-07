


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view/home_view.dart';
import 'package:mvvm_news_revirpoid/featches/main_screen/presentation/view/main_view.dart';

import '../../../category/presentation/view/category_view.dart';
final mainBottomBarRevirpoid =ChangeNotifierProvider<MainBottomBarRevirpoid>((ref) => MainBottomBarRevirpoid());
class MainBottomBarRevirpoid extends ChangeNotifier{
  int index=0;
  List<Widget>screen=[
    const HomeView(),
    const CategoryView(),
  ];
  changeindex(value){
    index=value;
    notifyListeners();
  }
}