// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'carousel_notifier.dart';

class CarouselStateMapper extends ClassMapperBase<CarouselState> {
  CarouselStateMapper._();

  static CarouselStateMapper? _instance;
  static CarouselStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CarouselStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CarouselState';

  static int _$index(CarouselState v) => v.index;
  static const Field<CarouselState, int> _f$index = Field('index', _$index);

  @override
  final MappableFields<CarouselState> fields = const {
    #index: _f$index,
  };

  static CarouselState _instantiate(DecodingData data) {
    return CarouselState(index: data.dec(_f$index));
  }

  @override
  final Function instantiate = _instantiate;

  static CarouselState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CarouselState>(map);
  }

  static CarouselState fromJson(String json) {
    return ensureInitialized().decodeJson<CarouselState>(json);
  }
}

mixin CarouselStateMappable {
  String toJson() {
    return CarouselStateMapper.ensureInitialized()
        .encodeJson<CarouselState>(this as CarouselState);
  }

  Map<String, dynamic> toMap() {
    return CarouselStateMapper.ensureInitialized()
        .encodeMap<CarouselState>(this as CarouselState);
  }

  CarouselStateCopyWith<CarouselState, CarouselState, CarouselState>
      get copyWith => _CarouselStateCopyWithImpl<CarouselState, CarouselState>(
          this as CarouselState, $identity, $identity);
  @override
  String toString() {
    return CarouselStateMapper.ensureInitialized()
        .stringifyValue(this as CarouselState);
  }

  @override
  bool operator ==(Object other) {
    return CarouselStateMapper.ensureInitialized()
        .equalsValue(this as CarouselState, other);
  }

  @override
  int get hashCode {
    return CarouselStateMapper.ensureInitialized()
        .hashValue(this as CarouselState);
  }
}

extension CarouselStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CarouselState, $Out> {
  CarouselStateCopyWith<$R, CarouselState, $Out> get $asCarouselState =>
      $base.as((v, t, t2) => _CarouselStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CarouselStateCopyWith<$R, $In extends CarouselState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? index});
  CarouselStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CarouselStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CarouselState, $Out>
    implements CarouselStateCopyWith<$R, CarouselState, $Out> {
  _CarouselStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CarouselState> $mapper =
      CarouselStateMapper.ensureInitialized();
  @override
  $R call({int? index}) =>
      $apply(FieldCopyWithData({if (index != null) #index: index}));
  @override
  CarouselState $make(CopyWithData data) =>
      CarouselState(index: data.get(#index, or: $value.index));

  @override
  CarouselStateCopyWith<$R2, CarouselState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CarouselStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
