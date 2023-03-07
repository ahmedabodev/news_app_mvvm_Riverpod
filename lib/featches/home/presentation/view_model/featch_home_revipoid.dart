



import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/core/api/api_services.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/home/data/repo/home_repo_impl.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';
final fetchHomeRiverpod =ChangeNotifierProvider<FetchHomeRiverpod>((ref) => FetchHomeRiverpod(HomeRepoImp()));
class FetchHomeRiverpod  extends ChangeNotifier{
  FetchHomeRiverpod(this.homeRepoImpl){
    getData();
  }
  final HomeRepoImp homeRepoImpl;
  HomeModel? home;
  Failure? failure;
  String search='general';
  changeSearch(value){
    search=value;
    getData();
    notifyListeners();
  }
  getData()async{
Either<Failure,HomeModel>result= await homeRepoImpl.featchEverything(search: search);
 result.fold((fail){
   failure=fail;

 }, (respons){
   home=respons;
 });
notifyListeners();

  }

}