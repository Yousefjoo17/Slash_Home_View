part of 'scroll_offers_cubit.dart';

@immutable
sealed class ScrollOffersState {}

final class ScrollOffersInitial extends ScrollOffersState {}

final class ScrollOffersSuccess extends ScrollOffersState {
  final int currIndex;
  ScrollOffersSuccess({required this.currIndex});
}
