import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  child: RotatedBox(
                    quarterTurns: 0,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.white,
                  splashColor: Colors.black87,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Text(
                      'CLICK ME !!!',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  shape: StadiumBorder(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
