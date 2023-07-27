import 'package:flutter/material.dart';
import 'package:paynav/data/remaining_winner_data.dart';
import 'package:paynav/models/remaining_winner.dart';

class Prizes extends StatelessWidget {
  const Prizes({
    super.key,
  });

  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size.height;
    print(size);
    PrizeWinner i;
    return SizedBox(
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Be the first in your gang to grow up in ranks",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black26),
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              leading: Text(
                "Rank",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: Text(
                "Prizes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            for (i in prizeWinner)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    // height: 35,
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Placeholder(
                            fallbackHeight: 10,
                            fallbackWidth: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(i.rank),
                        ],
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: i.icon,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            i.voucher,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        width: 80,
                        child: Text(
                          i.prize,
                          textAlign: TextAlign.end,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            const SizedBox(
              height: 30,
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
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
