import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:jurno_blog_app/data/data_sources/remote/api_constant.dart';
import 'package:jurno_blog_app/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../utils/utils.dart';
import 'api_exception.dart';

class ApiClient{

  late Dio dio;
  late BaseOptions baseoptions;

  ApiClient(){
    baseoptions=BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseoptions);
    dio.interceptors.add(PrettyDioLogger());
    //instead of printing manually you can use interceptor to print reposne autmatically

  }

  Future<Response> getRequest({required String path}) async{

    try {
      // debugPrint("🚀🚀====API REQUEST====🚀🚀");
      // debugPrint("Request Url: ${baseoptions.baseUrl+path}");
      var response = await dio.get(path);
      // debugPrint("🔥🔥====API RESPONSE====🔥🔥");
      // debugPrint(response.data);
      // debugPrint("Status Code: ${response.statusCode.toString()}");
      // log("Data: ${response.data}");
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
}

  Future<Response> postRequest({required String path,dynamic body}) async{

    var token = await Utils.getToken();

    final options = Options(
        headers:{"Authorization":"Bearer $token"}
    );

    try {
      // debugPrint("🚀🚀====API REQUEST====🚀🚀");
      // debugPrint("Request Url: ${baseoptions.baseUrl+path}");
      var response = await dio.post(path,data: body,options:options);
      // debugPrint("🔥🔥====API RESPONSE====🔥🔥");
      // debugPrint(response.data);
      // debugPrint("Status Code: ${response.statusCode.toString()}");
      // log("Data: ${response.data}");
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }


}



