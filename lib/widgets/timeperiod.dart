import 'package:flutter/material.dart';
import 'package:paynav/bloc/leader_board_bloc.dart';
import 'package:paynav/bloc/leader_board_event.dart';
import 'package:paynav/bloc/leader_board_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/widgets/prize.dart';

class TimePeriod extends StatelessWidget {
  const TimePeriod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(106, 22, 92, 124),
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(25), right: Radius.circular(25))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 7,
          ),
          BlocBuilder<LeaderBoardBloc, LeaderBoardState>(
            builder: (context, state) {
              return TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: (state is WeekButtonChangeState || state is LeaderBoardInitialState)
                        ? Colors.white
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<LeaderBoardBloc>(context)
                        .add(WeekButtonPressEvent());
                  },
                  child: const Text(
                    "This Week",
                    style: TextStyle(color: Colors.black),
                  ));
            },
          ),
          const SizedBox(
            width: 30,
          ),
          BlocBuilder<LeaderBoardBloc, LeaderBoardState>(
            builder: (context, state) {
              return TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: (state is ThisMonthButtonChangeState)
                        ? Colors.white
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<LeaderBoardBloc>(context)
                        .add(ThisMonthButtonPressEvent());
                  },
                  child: const Text(
                    "This Month",
                    style: TextStyle(color: Colors.black),
                  ));
            },
          ),
          const SizedBox(
            width: 30,
          ),
          BlocBuilder<LeaderBoardBloc, LeaderBoardState>(
            builder: (context, state) {
              return TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: (state is LastMonthButtonChangeState)
                        ? Colors.white
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<LeaderBoardBloc>(context)
                        .add(LastMonthButtonPressEvent());
                  },
                  child: const Text(
                    "Last Month",
                    style: TextStyle(color: Colors.black),
                  ));
            },
          ),
          const SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}
