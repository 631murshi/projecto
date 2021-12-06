import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:projeto/modelclass.dart';

abstract class Repository{
Future<BookingSpot>?booking();
Future<void>? cancel();
}

class bookingRepo extends Repository{
  @override
  Future<BookingSpot> booking() async {
    BookingSpot? obj_bookingmode;
    var webUrl = Uri.parse(
        "https://run.mocky.io/v3/c8f28ee5-a4fd-4b6a-ac6f-43ae176be349");
    var res = await http.get(webUrl);
    if (res.statusCode == 0) {
      var data = json.decode(res.body);
      obj_bookingmode = BookingSpot.fromJson(data);
    }

    return obj_bookingmode!;
  }

  @override
  Future<void> cancel() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}