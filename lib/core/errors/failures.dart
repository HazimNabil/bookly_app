import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          'The connection timed out. Please check your internet and try again.',
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(
          'Unable to send data to the server. Please try again later.',
        );

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          'Server is taking too long to respond. Please try again later.',
        );

      case DioExceptionType.badCertificate:
        return ServerFailure(
          "There's a problem with the server's security certificate. Please contact support.",
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('The request was cancelled. Please try again.');

      case DioExceptionType.connectionError:
        return ServerFailure(
          'Unable to connect to the server. Please check your internet connection and try again.',
        );

      case DioExceptionType.unknown:
        return ServerFailure(
          'An unexpected error occurred. Please try again or contact support if the problem continues.',
        );
    }
  }

  factory ServerFailure.fromResponse(
    int statusCode,
    Map<String, dynamic> response,
  ) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later.');
    } else {
      return ServerFailure('Oops There was an Error, Please try again.');
    }
  }
}
