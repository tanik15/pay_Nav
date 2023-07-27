import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/bloc/leader_board_bloc.dart';
import 'package:paynav/bloc/leader_board_event.dart';
import 'package:paynav/bloc/leader_board_state.dart';
import 'package:paynav/data/remaining_winner_data.dart';
import 'package:paynav/models/remaining_winner.dart';
import 'package:paynav/screens/second_screen.dart';
import 'package:paynav/widgets/alertbox.dart';
import 'package:paynav/widgets/mytile.dart';
import 'package:paynav/widgets/point.dart';
import 'package:paynav/widgets/prize.dart';
import 'package:paynav/widgets/texttile.dart';
import 'package:paynav/widgets/timeperiod.dart';
import 'package:paynav/widgets/winner_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // DefaultTabController.of(context)!.index = 0;
    var size = MediaQuery.of(context).size;
    RemainingWinner i;
    return Builder(builder: (BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: size.height * 0.50,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 3, 22, 39),
                    Color.fromARGB(255, 3, 90, 167),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Row(
                    children: [
                      BlocBuilder<LeaderBoardBloc, LeaderBoardState>(
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () {
                              BlocProvider.of<LeaderBoardBloc>(context)
                                  .add(MyStatusButtonPressEvent());
                            },
                            icon: const Icon(Icons.arrow_back),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Leader Board",
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (ctx) => const Alertbox());
                        },
                        child: Row(
                          children: const [
                            Text(
                              "How it works",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.settings)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TimePeriod(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    WinnerWidget(
                      size: 80,
                      padding: 8,
                      name: "Natashachowdary",
                      number: "7260",
                      rank: 2,
                    ),
                    WinnerWidget(
                      size: 140,
                      padding: 15,
                      name: "Rajareddy",
                      number: "8370",
                      rank: 1,
                    ),
                    WinnerWidget(
                      size: 80,
                      padding: 8,
                      name: "Samvibhansingh",
                      number: "6260",
                      rank: 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTile(),
                const SizedBox(
                  height: 5,
                ),
                for (i in remainingWinner)
                  TextTileWidget(name: i.name, number: i.number, rank: i.rank),
                const SizedBox(
                  height: 40,
                ),
                // BlocBuilder<LeaderBoardBloc, LeaderBoardState>(
                //   builder: (context, state) {
                //     return Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Container(
                //           height: 30,
                //           child: Row(children: [
                //             TextButton(
                //                 onPressed: () {
                //                   BlocProvider.of<LeaderBoardBloc>(context)
                //                       .add(PrizeTextButtonPressEvent());
                //                 },
                //                 child: const Text("Prize")),
                //             TextButton(
                //                 onPressed: () {
                //                   BlocProvider.of<LeaderBoardBloc>(context)
                //                       .add(PointTextButtonPressEvent());
                //                 },
                //                 child: const Text("Points")),
                //           ]),
                //         ),
                //         const Divider(
                //           color: Colors.blue,
                //         ),
                //         const SizedBox(
                //           height: 15,
                //         ),
                //         // const Prizes(),
                //         // if (state is PrizeButtonChangeState ||
                //         //     state is LeaderBoardInitialState)
                //         //   const Prizes()
                //         // else if (state is PointButtonChangeState)
                //         //   const Point()
                //       ],
                //     );
                //   },
                // ),
                DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                            indicator: BoxDecoration(),
                            indicatorWeight: 1,
                            isScrollable: true,
                            labelPadding: EdgeInsets.only(left: 20, right: 20),
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Text(
                                "Prizes",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Points",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                      // print(DefaultTabController.of(context).!index)
                      const SizedBox(
                        height: 3,
                      ),
                      const Divider(
                        color: Colors.blue,
                        thickness: 1.5,
                        height: 0,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 6,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1, right: 20),
                            child: TabBar(
                                isScrollable: true,
                                labelPadding:
                                    EdgeInsets.only(left: 30, right: 20),
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    color: Colors.blue,
                                    shape: BoxShape.rectangle),
                                tabs: [Text("       "), Text("         ")]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: (DefaultTabController.of(context)?.index == 0)
                              ? 700
                              : 1800,
                          child:
                              // const
                              TabBarView(children: [Prizes(), Point()]))
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      );
    });
  }
}
