import 'package:flutter/material.dart';

class TextTileWidget extends StatelessWidget {
  const TextTileWidget(
      {super.key,
      required this.name,
      required this.number,
      required this.rank});
  final int rank;
  final String name;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        height: 60,
        child: ListTile(
          // minVerticalPadding: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(
            name,
            style:const TextStyle(fontSize: 15),
          ),
          tileColor: const Color.fromARGB(255, 244, 185, 244).withOpacity(0.2),
          trailing: Text(
            "$number",
            style: const TextStyle(fontSize: 18),
          ),
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$rank",
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/Boy_image.jpeg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
