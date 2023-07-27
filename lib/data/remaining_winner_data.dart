import 'package:flutter/material.dart';
import 'package:paynav/models/remaining_winner.dart';

const remainingWinner = [
  RemainingWinner(
    name: "Shakilesh Yadav",
    number: 5960,
    rank: 4,
  ),
  RemainingWinner(name: "Kaveri sharma", number: 5420, rank: 5),
  RemainingWinner(name: "Brij mahapatra", number: 5260, rank: 6),
  RemainingWinner(name: "Shikha rawat", number: 5190, rank: 7),
  RemainingWinner(name: "Natasha oberoi", number: 5010, rank: 8),
  RemainingWinner(name: "Danish sait", number: 4960, rank: 9),
  RemainingWinner(name: "Suraj agarwal", number: 4720, rank: 10),
];

const prizeWinner = [
  PrizeWinner(
      prize: "\u{20B9}1,00,000",
      rank: "1",
      voucher: "Gold",
      icon: AssetImage('assets/gold_logo.png')),
  PrizeWinner(
      prize: "\u{20B9}50,000",
      rank: "2",
      voucher: "Gold",
      icon: AssetImage('assets/gold_logo.png')),
  PrizeWinner(
      prize: "\u{20B9}10,000",
      rank: "3",
      voucher: "Voucher",
      icon: AssetImage('assets/amazon_logo.jpg')),
  PrizeWinner(
      prize: "\u{20B9}1000",
      rank: "4-10",
      voucher: "Voucher",
      icon: AssetImage('assets/swiggy_logo.png')),
  PrizeWinner(
      prize: "10mg",
      rank: "11-100",
      voucher: "Gold",
      icon: AssetImage('assets/gold_logo.png')),
  PrizeWinner(
      prize: "1mg",
      rank: "101-500",
      voucher: "Gold",
      icon: AssetImage('assets/gold_logo.png')),
];

List repeatedTile = [
  RepeatedTile(name: "joined PayNav", number: 50),
  RepeatedTile(name: "First Purchase", number: 250),
  RepeatedTile(name: "KYC", number: 50),
  RepeatedTile(name: "Account Opened & Added Money", number: 50),
  RepeatedTile(name: "First Gold Purchase", number: 50),
  RepeatedTile(name: "First Direct Shopping", number: 50),
  RepeatedTile(name: 'Play "The legend of Gold,Car & the jet"', number: 50),
  RepeatedTile(
      name: "Add Money in Account through Bank Transfer",
      number: 50,
      subtitle: "valid only once"),
  RepeatedTile(
      name: "First Neo Card Transaction", number: 100, subtitle: "Coming Soon"),
  RepeatedTile(
      name: "Neo Card First Offline Transaction",
      number: 100,
      subtitle: "Coming Soon"),
];

List myNetwork = [
  RepeatedTile(
      name: "Refer a Friend",
      number: 10,
      subtitle: "(After first succesful transaction)"),
  RepeatedTile(
      name: "Refer a freind -on ever5th referral",
      number: 20,
      subtitle: "(Like 10th referral,15th,20th and so on...)"),
];

List onceADay = [
  RepeatedTile(
      name: "Highest Gold Purchase of the day",
      number: 100,
      subtitle: ("(The amound should be highest of all buyers) ")),
  RepeatedTile(
      name: "Highest Voucher Purchase of the day",
      number: 150,
      subtitle: ("(The amound should be highest of all buyers)")),
  RepeatedTile(
      name: "Highest Money added in Account",
      number: 100,
      subtitle: ("(The amound should be highest of all account holders)")),
];

List unlimited = [
  RepeatedTile(
      name: "Every Time Gold Purchase",
      number: 1,
      subtitle:
          ("(1 point on \u{20B9}20 spent ,for \u{20B9}40 spent 2 points and so on)")),
  RepeatedTile(
      name: "Every Voucher Gold Purchase",
      number: 10,
      subtitle:
          ("(10 point on \u{20B9}50 spent ,for \u{20B9}100 spent 20 points and so on)")),
  RepeatedTile(
      name: "Every Money added to Account",
      number: 1,
      subtitle:
          ("(1 point on \u{20B9}50 spent,for \u{20B9}100 spent 2 points)")),
  RepeatedTile(
    name: "Every Money added to Account",
    number: 10,
  ),
];
