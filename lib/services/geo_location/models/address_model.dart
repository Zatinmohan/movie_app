import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    final String? name,
    final String? city,
    final String? state,
    final String? postalCode,
    final String? streetAddress,
  }) = _AddressModel;
}
