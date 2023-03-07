import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm_news_revirpoid/core/api/dio_helper.dart';
import 'package:mvvm_news_revirpoid/core/api/end_points.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/category/data/category_repo.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';

class CategoryRepoImpl extends CategoryRepo{
  @override
  Future<Either<Failure, HomeModel>> fetchCategory({
    String? category,
    String? country,
  }) async{
try{
 var data=await  DioHelper.getData(url: EndPoints.category,query: {
   'country':country,
   'category':category,
   'apiKey':EndPoints.apikey,

 });
 var home=HomeModel.fromJson(data.data);

 return Right(home);

} catch(e){
return left(ServerFailure(e.toString()));
}
  }

}