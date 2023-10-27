import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class PriceConverter implements JsonConverter<double, String> {
  const PriceConverter();
  @override
  String toJson(double object) {
    return object.toString();
  }

  @override
  double fromJson(String object) {
    return double.parse(object.substring(1));
  }
}

@freezed
class Car with _$Car {
  factory Car({
    @JsonKey(name: 'car') required String brand,
    @JsonKey(name: 'car_model') required String model,
    @PriceConverter() required double price,
    @JsonKey(name: 'car_color') required String color,
    required bool availability,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
