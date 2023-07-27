import 'package:flutter/material.dart';

class WinnerWidget extends StatelessWidget {
  const WinnerWidget(
      {super.key,
      required this.size,
      required this.padding,
      required this.name,
      required this.number,
      required this.rank});
  final double size;
  final double padding;
  final int rank;
  final String number;
  final String name;

  @override
  Widget build(BuildContext context) {
    Widget ranked = (rank == 1)
        ? const Placeholder(
            fallbackHeight: 25,
            fallbackWidth: 25,
          )
        : Text(
            "$rank",
            style: const TextStyle(color: Colors.white70, fontSize: 15),
          );

    return Column(
      children: [
        ranked,
        Container(
            height: size,
            width: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(106, 22, 92, 124),
            ),
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: const CircleAvatar(
                  radius: 48, // Image radius
                  backgroundImage: AssetImage("assets/Boy_image.jpeg")),
            )),
        Text(
          number,
          style: const TextStyle(color: Colors.white70, fontSize: 22),
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white70, fontSize: 13),
        )
      ],
    );
  }
}
