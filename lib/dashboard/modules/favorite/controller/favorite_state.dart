part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteStateLoading extends FavoriteState {}

final class FavoriteStateLoaded extends FavoriteState {}

final class FavoriteStateEmpty extends FavoriteState {}
