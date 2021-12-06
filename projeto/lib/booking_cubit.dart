import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:projeto/modelclass.dart';
import 'package:projeto/repository.dart';
part 'booking_state.dart';


class BookingCubit extends Cubit<BookingState> {
  BookingCubit(
        this.obj_repository
      ) : super(BookingInitial());

  final bookingRepo obj_repository;

  BookingSpot? bookingdata;
  Card1? card1;
  Card2? card2;
  Card3? card3;
  Future<BookingSpot>api_calls() async {
    emit(BookingLoading());
    try {
      bookingdata = await obj_repository.booking();
      card1 = bookingdata!.card1!;
      card2 = bookingdata!.card2!;
      card3 = bookingdata!.card3!;

      emit(BookingSuccesfull(card1,card2,card3));
    } catch (e)
    {
      emit(BookingFail());
    }
    return bookingdata!;
  }
}
