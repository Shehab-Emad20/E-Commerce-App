part of 'cart_cubit.dart';

@immutable
sealed class Carttate {}

final class CartCubitInitial extends Carttate {}

final class CartItemtAdded extends Carttate {}

final class CartItemtRemove extends Carttate {}
