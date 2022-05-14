import 'package:flutter/material.dart';

class MyExampleLayout extends StatelessWidget {
  const MyExampleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.orange,
          ),
          const Text("41")
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget _buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(color, Icons.phone, "Call"),
        _buildButtonColumn(color, Icons.near_me, "Route"),
        _buildButtonColumn(color, Icons.share, "Share"),
      ],
    );

    Widget _textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "images/lake.jpeg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          _buttonSection,
          _textSection
        ],
      ),
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
