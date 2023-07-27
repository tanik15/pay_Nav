import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/bloc/leader_board_bloc.dart';
import 'package:paynav/bloc/leader_board_event.dart';
import 'package:paynav/bloc/leader_board_state.dart';
import 'package:paynav/screens/second_screen.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 90,
        width: double.infinity,
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 25,
              shadowColor: Color(0x89551515),
              child: SizedBox(
                height: 60,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: const Text(
                    "Lalit Thakre",
                    style: TextStyle(fontSize: 15),
                  ),
                  tileColor:
                      const Color.fromARGB(255, 244, 185, 244).withOpacity(0.4),
                  trailing: const Text(
                    "2130",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: const [
                          Text(
                            "41",
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage("assets/Boy_image.jpeg"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20))),
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: BlocConsumer<LeaderBoardBloc, LeaderBoardState>(
                    listener: (context, state) {
                      if (state is MyStatusButtonChangeState) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondScreen()));
                      }
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 67, 21, 159),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            )),
                        onPressed: () {
                          BlocProvider.of<LeaderBoardBloc>(context)
                              .add(MyStatusButtonPressEvent());
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "My Status & Awards",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
