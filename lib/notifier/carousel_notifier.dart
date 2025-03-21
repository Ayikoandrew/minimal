import 'package:minimal/log/logger_minimal.dart';
import 'package:minimal_mvn/minimal_mvn.dart';

class CarouselState {
  int index;

  CarouselState({required this.index});

  CarouselState copyWith({int? index}) =>
      CarouselState(index: index ?? this.index);
}

class CarouselNotifier extends MMNotifier {
  CarouselNotifier() : super(CarouselState(index: 0));

  void setPage(int index) {
    LoggerMinimal.debug("setPage value from the notifier $index");
    final newState = state.copyWith(index: index);
    LoggerMinimal.debug("Updated state: ${newState.index}");
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
