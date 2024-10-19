import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection timeout with ApiServer!');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer!');

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate with ApiServer!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: 'Request with ApiServer was cancelled!');

      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage: 'Request with ApiServer has a connection error!');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No Internet Connection!');
        }
        return ServerFailure(
            errorMessage: 'Unexpected Error, please try again!');
      default:
        return ServerFailure(
            errorMessage: 'An error occurred, please try again!');
    }
  }

  factory ServerFailure.fromResponse({required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal server error, please try later!');
    } else {
      return ServerFailure(
          errorMessage: 'Oops, something went wrong, try later!');
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure({required super.errorMessage});
}

class NetworkFailure extends Failure {
  NetworkFailure({required super.errorMessage});
}
