part of 'booking_cubit.dart';

@immutable
abstract class BookingState {}

class BookingInitial extends BookingState {}

class BookingLoading extends BookingState {}

class BookingSuccesfull extends BookingState {

  Card1? card1;
  Card2? card2;
  Card3? card3;
  BookingSuccesfull(this.card1,this.card2,this.card3);
}

class BookingFail extends BookingState {}