part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartCubitInitial extends CartState {}

final class CartItemAdded extends CartState {}

final class CartItemRemoved extends CartState {}
