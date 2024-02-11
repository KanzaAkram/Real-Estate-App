// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [payment_mastercard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMastercardModel extends Equatable {PaymentMastercardModel({this.selectedDate, this.date = "11/05/2023", }) { selectedDate = selectedDate  ?? DateTime.now(); }

DateTime? selectedDate;

String date;

PaymentMastercardModel copyWith({DateTime? selectedDate, String? date, }) { return PaymentMastercardModel(
selectedDate : selectedDate ?? this.selectedDate,
date : date ?? this.date,
); } 
@override List<Object?> get props => [selectedDate,date];
 }
