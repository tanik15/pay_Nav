import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/bloc/leader_board_bloc.dart';
import 'package:paynav/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          dialogTheme: const DialogTheme(
              titleTextStyle: TextStyle(color: Colors.white),
              contentTextStyle: TextStyle(color: Colors.white)),
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
          listTileTheme: const ListTileThemeData(textColor: Colors.black)),
      home: BlocProvider(
        create: (context) => LeaderBoardBloc(),
        child: const Home(),
      ),
    );
  }
}
