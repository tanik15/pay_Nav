import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/bloc/leader_board_bloc.dart';
import 'package:paynav/bloc/leader_board_state.dart';

class Alertbox extends StatelessWidget {
  const Alertbox({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> str = [''];
    TextStyle theme = const TextStyle(color: Colors.white);
    return Dialog(
      insetPadding: const EdgeInsets.all(15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      alignment: Alignment.bottomCenter,
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
            ),
            Row(
              children: const [
                Icon(
                  Icons.settings,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "How it works",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                height: 200,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\u2022 At the bottom of the page you can access the",
                        style: theme,
                      ),
                      const Text(
                        "Prizes & Point system.                                       ",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.yellow),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u2022 At the bottom of the page you can access the ",
                        style: theme,
                      ),
                      Text(
                        "  At the bottom of the page you can access.       ",
                        style: theme,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u2022 At the bottom of the page you can access the",
                        style: theme,
                      ),
                      const Text(
                        "Prizes & Point system.                                       ",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.yellow),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u2022 At the bottom of the page you can access the",
                        style: theme,
                      ),
                      Text(
                        "  At the bottom of the page you can access.       ",
                        style: theme,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u2022 At the bottom of the page you can access the",
                        style: theme,
                      ),
                      Text(
                        "  At the bottom of the page you can access.       ",
                        style: theme,
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
