import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    "Starwberry Pavlova",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    "Pavlova is meringue-based dessert named after the Russian bellerina Anna Pavlova. Pavlova features a erisp erust and soft light inside, topped with fruit andd whipped cream",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star)
                      ],
                    ),
                    const Text(
                      "170 Reviews",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.note),
                        Text(
                          "Prep : ",
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "25 Min",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.timer),
                        Text(
                          "Cook : ",
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "1 hr",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.food_bank),
                        Text(
                          "Feeds : ",
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "4-6",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
