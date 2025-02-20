part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartCubitInitial extends CartState {}

final class CartProductAdded extends CartState {}

final class CartProductRemove extends CartState {}
