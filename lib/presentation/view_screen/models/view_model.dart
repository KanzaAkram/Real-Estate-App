// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewModel extends Equatable {ViewModel() {  }

ViewModel copyWith() { return ViewModel(
); } 
@override List<Object?> get props => [];
 }
