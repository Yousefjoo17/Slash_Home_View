part of 'scroll_offers_cubit.dart';

@immutable
sealed class ScrollOffersState {}

final class ScrollOffersInitial extends ScrollOffersState {}

final class ScrollOffersRebuild extends ScrollOffersState {}
