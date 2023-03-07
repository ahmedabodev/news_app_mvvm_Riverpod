


import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/category/data/category_repo_impl.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';

final fetchCategoryRevipoid= ChangeNotifierProvider<FetchCategoryRevipoid>((ref) => FetchCategoryRevipoid(CategoryRepoImpl()));
class FetchCategoryRevipoid extends ChangeNotifier{
  FetchCategoryRevipoid(this.categoryRepoImpl){
getdata();
  }

  final CategoryRepoImpl categoryRepoImpl;
  HomeModel? home;
  String country='us';
  int index=0;
  final scrollController = ScrollController();

  Failure? failure;
  List<String>myCategory=[
    'general',
    'business',
    'entertainment',
    'health',
    'science',
    'sports',
    'entertainment',
    'technology',
  ];
  changeCategory(value){
    index=value;
    getdata();
    notifyListeners();

  }
  getdata()async{
    Either<Failure,HomeModel>result=
    await categoryRepoImpl.fetchCategory(category:myCategory[index] ,country:country );
    result.fold((fail){
      failure=fail;
      print(failure!.errMessage.toString());

    }, (rspons){
      home=rspons;
      print(home);

    });
    notifyListeners();
  }
  void scrollDown() {

    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 1),
      curve: Curves.fastOutSlowIn,
    );
    notifyListeners();

  }

}