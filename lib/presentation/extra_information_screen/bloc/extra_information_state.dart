// ignore_for_file: must_be_immutable

part of 'extra_information_bloc.dart';

/// Represents the state of ExtraInformation in the application.
class ExtraInformationState extends Equatable {
  ExtraInformationState({
    this.priceController,
    this.priceController1,
    this.extraInformationModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  ExtraInformationModel? extraInformationModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        extraInformationModelObj,
      ];
  ExtraInformationState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    ExtraInformationModel? extraInformationModelObj,
  }) {
    return ExtraInformationState(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      extraInformationModelObj:
          extraInformationModelObj ?? this.extraInformationModelObj,
    );
  }
}
