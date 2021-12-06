part of 'booking_cubit.dart';

@immutable
abstract class BookingState {}

class BookingInitial extends BookingState {}

class BookingLoading extends BookingState {}

class BookingSuccesfull extends BookingState {}

class BookingFail extends BookingState {}