import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:meta/meta.dart';

part 'scroll_offers_state.dart';

class ScrollOffersCubit extends Cubit<ScrollOffersState> {
  ScrollOffersCubit(this.currImgIndex) : super(ScrollOffersInitial());
  int currImgIndex = 0;
  final CarouselController controller = CarouselController();

  void scroll(int nextImgIndex) {
    emit(ScrollOffersSuccess(currIndex: nextImgIndex));
    currImgIndex = nextImgIndex;
  }
}
