import 'package:dart_mappable/dart_mappable.dart';
import 'package:minimal_mvn/minimal_mvn.dart';

part 'carousel_notifier.mapper.dart';

@MappableClass()
class CarouselState with CarouselStateMappable {
  final int index;

  const CarouselState({required this.index});
}

class CarouselNotifier extends MMNotifier {
  CarouselNotifier() : super(CarouselState(index: 0));

  void setPage(int index) {
    final newState = state.copyWith(index: index);
    notify(newState);
  }
}

final MMManager<CarouselNotifier> carouselManager = MMManager(
  CarouselNotifier.new,
);

final MMManager<CarouselNotifier> disposableCarouselManager = MMManager(
  CarouselNotifier.new,
  autodispose: false,
);
