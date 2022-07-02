import 'package:flutter/material.dart';

class YourNextRideScreen extends StatelessWidget {
  const YourNextRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Card(
                clipBehavior: Clip.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),

                elevation: 5,
                color: index % 2 == 0 ? Colors.red : Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Von München Hbf",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            "Nach Nürnberg Hbf",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            "Abfahrt auf Gleis 3",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            "Am 12. Juni 2022 \nUm 16:43 Uhr",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      Expanded(child: Center(child: Text("Mitfahrer kontaktieren", style: Theme.of(context).textTheme.headline2,)))
                    ],
                  ),
                ),
              )),
    );
  }
}
