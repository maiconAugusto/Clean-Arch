class InfraException implements Exception {
  dynamic innerException;
  final String? message;

  InfraException({this.innerException, this.message}) {
    if (innerException is Exception == false) {
      innerException = null;
    }
  }

  @override
  String toString() => "InfraException :\nInnerException: ${innerException.toString()}\nError message: $message";
}

class InfraNotFoundedException extends InfraException {
  InfraNotFoundedException({super.innerException}) : super(message: 'Infra Exception not founded');
}
