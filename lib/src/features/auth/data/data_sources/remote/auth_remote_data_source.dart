import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<Either<DioError, Response<int>>> otpHandshake(
      {required double phoneNumber});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getDataFromServer(
      {required double phoneNumber});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<int>>> otpHandshake(
          {required double phoneNumber}) =>
      apiService.postMethod<int>(
        AuthEndpoints.loginLink,
        body: {
          "token": "mohsenandhamidandhadiandasakrobo",
          "phonenum": phoneNumber,
          "devices": ""
        },
      );

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getDataFromServer(
      {required double phoneNumber}) {
    return apiService.getMethod(
      'http://asatic.ir/api/Devices/$phoneNumber',
    );
  }
}
