//CustomException
class CustomException implements Exception {
  final String? message;
  final String? statusCode;

  CustomException({this.message, this.statusCode});

  @override
  String toString() {
    return '$runtimeType(message: $message, statusCode: $statusCode)';
  }

  String? get errorMessage {
    return message;
  }
}
