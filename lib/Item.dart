import 'package:basics/dot.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Green",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            color: Colors.green[400],
            child: Container(
              padding: EdgeInsets.all(4),
              height: 400,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 20,
                    color: Colors.green[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://wonder-day.com/wp-content/uploads/2020/10/wonder-day-among-us-png-27.png"))),
                      height: 190,
                      width: 190,
                    ),
                  ),
                  Container(
                    width: 90,
                    margin: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [dot(), dot(), dot(), dot(), dot()],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 4),
                    child: Text(
                      "Character",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    child: Text(
                      "Green",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 4),
                    child: Text(
                      "Imposter Probabilty",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
