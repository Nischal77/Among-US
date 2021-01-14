import 'package:basics/Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              Container(
                width: 150,
                child: Text(
                  "Among Us",
                  style: TextStyle(fontSize: 35, color: Colors.green[100]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 500,
                child: PageView.builder(
                    itemCount: 10,
                    controller: PageController(viewportFraction: 0.7),
                    onPageChanged: (int index) {
                      setState(() {
                        _index = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1 : 0.9,
                        child: item(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
