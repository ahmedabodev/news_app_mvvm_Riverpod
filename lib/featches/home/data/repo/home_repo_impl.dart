import 'package:dartz/dartz.dart';
import 'package:mvvm_news_revirpoid/core/api/api_services.dart';
import 'package:mvvm_news_revirpoid/core/api/api_services_impl.dart';
import 'package:mvvm_news_revirpoid/core/api/dio_helper.dart';
import 'package:mvvm_news_revirpoid/core/api/end_points.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/home/data/repo/home_repo.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';
class HomeRepoImp implements HomeRepo{
  @override
  Future<Either<Failure, HomeModel>> featchEverything({
    String? search,
})async {
try{
  var data =await DioHelper.getData(url:  EndPoints.everything,query: {
'apiKey':EndPoints.apikey,
    'q':search

  });
  var home=HomeModel.fromJson(data.data);
return Right(home);

}catch(e){
  print(left(e.toString()));

  return left(ServerFailure(e.toString()));
}

  }






}