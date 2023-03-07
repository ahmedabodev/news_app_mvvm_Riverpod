import 'package:dartz/dartz.dart';
import 'package:mvvm_news_revirpoid/core/errors/errors.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/homemodel.dart';
abstract class CategoryRepo{

  Future<Either<Failure,HomeModel>>fetchCategory();
}