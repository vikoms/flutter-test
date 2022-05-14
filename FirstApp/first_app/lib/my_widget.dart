import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.purple,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.blue,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.green,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
        ],
      ),
    );
  }
}

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "19:30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Hello World",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.white,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Kata Mutiara",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                    child: Text(
                      "Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text("Nelson Mandela"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
