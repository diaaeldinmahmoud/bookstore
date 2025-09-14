import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  const ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "receive timeout with ApiServer");
        throw UnimplementedError();
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.statusCode!,
          e.response!.data,
        );
        throw UnimplementedError();
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request to ApiServer is canceled");

      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: "There is a problem with your internet connection",
        );

      case DioExceptionType.unknown:
        if (e.message!.contains('SocketException')) {
          return ServerFailure(
            errorMessage: "There is a problem with your internet connection",
          );
        }
        return ServerFailure(errorMessage: "Opps something went wrong");

      default:
        return ServerFailure(errorMessage: "Opps something went wrong");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: 'Not Found');
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: 'Internal Server Error');
    } else {
      return ServerFailure(errorMessage: 'Opps something went wrong');
    }
  }
}
