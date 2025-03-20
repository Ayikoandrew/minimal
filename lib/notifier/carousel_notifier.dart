import 'package:minimal_mvn/minimal_mvn.dart';

class CarouselState {
  final int index;

  const CarouselState({required this.index});
}

class CarouselNotifier extends MMNotifier {
  CarouselNotifier() : super(CarouselState(index: 0));

  void setPage(int index) {
    notify(CarouselState(index: index));
  }
}

final MMManager<CarouselNotifier> carouselManager = MMManager(
  CarouselNotifier.new,
);

final MMManager<CarouselNotifier> disposableCarouselManager = MMManager(
  CarouselNotifier.new,
  autodispose: true,
);
