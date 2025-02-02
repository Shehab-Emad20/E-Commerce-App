//هنا لو في مشكله في سيرفير بتاعي
abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailur extends Failure {
  ServerFailur(super.message);
}
