class CustomExcepton implements Exception {
  final String message;

  CustomExcepton({required this.message});

  @override
  String toString() {
    return message;
  }
}
