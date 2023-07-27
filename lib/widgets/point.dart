import 'package:flutter/material.dart';
import 'package:paynav/data/remaining_winner_data.dart';
import 'package:paynav/models/remaining_winner.dart';

class Point extends StatelessWidget {
  const Point({super.key});

  @override
  Widget build(BuildContext context) {
    RepeatedTile element;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Earn more points to level up",
            textAlign: TextAlign.start,
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const ListTile(
            leading: Text(
              "Achievements",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: Text(
              "Points",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Only once",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for (element in repeatedTile)
            RepeatedTilee(
              name: element.name,
              number: element.number,
              subtitle: element.subtitle,
            ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "My Network",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for (element in myNetwork)
            RepeatedTilee(
              name: element.name,
              number: element.number,
              subtitle: element.subtitle,
            ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Once a Day",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for (element in onceADay)
            RepeatedTilee(
              name: element.name,
              number: element.number,
              subtitle: element.subtitle,
            ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Unlimited",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for (element in unlimited)
            RepeatedTilee(
              name: element.name,
              number: element.number,
              subtitle: element.subtitle,
            ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Growth Challenges",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          for (element in myNetwork)
            RepeatedTilee(
              name: element.name,
              number: element.number,
              subtitle: element.subtitle,
            ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Made With Golden "),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/golden_heart.jpg",
                ),
                radius: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class RepeatedTilee extends StatelessWidget {
  RepeatedTilee(
      {required this.name,
      required this.number,
      super.key,
      this.subtitle = ""});
  final String name;
  final int number;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 52,
          child: ListTile(
            title: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Text(
              "$number",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
