import 'package:dio/dio.dart';
import 'package:mvvm_news_revirpoid/core/api/api_services.dart';

import 'dio_helper.dart';

class ApiServicesImplementation implements ApiServices{
  @override
  Future get({required String endPoint, Map<String, dynamic>? queryParameters})async {
    Response response =await  DioHelper.getData(url: endPoint,query: queryParameters);
    return response.data;
  }

}