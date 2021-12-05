class BookingSpot {
  Card1? card1;
  Card2? card2;
  Card3? card3;

  BookingSpot({this.card1, this.card2, this.card3});

  BookingSpot.fromJson(Map<String, dynamic> json) {
    card1 = json['card1'] != null ? new Card1.fromJson(json['card1']) : null;
    card2 = json['card2'] != null ? new Card2.fromJson(json['card2']) : null;
    card3 = json['card3'] != null ? new Card3.fromJson(json['card3']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.card1 != null) {
      data['card1'] = this.card1!.toJson();
    }
    if (this.card2 != null) {
      data['card2'] = this.card2!.toJson();
    }
    if (this.card3 != null) {
      data['card3'] = this.card3!.toJson();
    }
    return data;
  }
}

class Card1 {
  String? placeimage;
  String? amount;
  String? place;
  String? country;

  Card1({this.placeimage, this.amount, this.place, this.country});

  Card1.fromJson(Map<String, dynamic> json) {
    placeimage = json['placeimage'];
    amount = json['amount'];
    place = json['place'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['placeimage'] = this.placeimage;
    data['amount'] = this.amount;
    data['place'] = this.place;
    data['country'] = this.country;
    return data;
  }
}

class Card2 {
  String? checkin;
  String? checkout;
  String? persons;

  Card2({this.checkin, this.checkout, this.persons});

  Card2.fromJson(Map<String, dynamic> json) {
    checkin = json['checkin'];
    checkout = json['checkout'];
    persons = json['persons'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['checkin'] = this.checkin;
    data['checkout'] = this.checkout;
    data['persons'] = this.persons;
    return data;
  }
}

class Card3 {
  String? calcamount;
  String? totalamount;

  Card3({this.calcamount, this.totalamount});

  Card3.fromJson(Map<String, dynamic> json) {
    calcamount = json['calcamount'];
    totalamount = json['totalamount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calcamount'] = this.calcamount;
    data['totalamount'] = this.totalamount;
    return data;
  }
}