import 'package:flutter/cupertino.dart';

class RemainingWinner {
  const RemainingWinner(
      {required this.name, required this.number, required this.rank});

  final int rank;
  final String name;
  final int number;
}

class PrizeWinner {
  const PrizeWinner(
      {required this.prize,
      required this.rank,
      required this.voucher,
      required this.icon});
  final String rank;
  final String voucher;
  final String prize;
  final AssetImage icon;
}

class RepeatedTile {
  final String name;
  final int number;
  String subtitle ;

   RepeatedTile({required this.name,required  this.number, this.subtitle = ""});
}
