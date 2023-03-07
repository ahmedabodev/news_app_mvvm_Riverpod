import 'package:dartz/dartz.dart';
import 'package:mvvm_news_revirpoid/core/api/api_services.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';

abstract class HomeRepo{
  Future<Either<Failure,HomeModel>>featchEverything();

}