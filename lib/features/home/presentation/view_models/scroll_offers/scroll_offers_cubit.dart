import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'scroll_offers_state.dart';

class ScrollOffersCubit extends Cubit<ScrollOffersState> {
  ScrollOffersCubit() : super(ScrollOffersInitial());
}
