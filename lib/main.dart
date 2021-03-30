import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlipAnimantionDemo(),
    );
  }
}

class FlipAnimantionDemo extends StatefulWidget {
  @override
  _FlipAnimantionDemoState createState() => _FlipAnimantionDemoState();
}

class _FlipAnimantionDemoState extends State<FlipAnimantionDemo> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Animation Demo'),
      ),
      body: Container(
        width: _width,
        height: _height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Vertical Flip Animation',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 180.0,
                  height: 180.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))),
                              color: Colors.blue.shade400),
                        ),
                        Text(
                          'Front',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.orange.shade200),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Horizontal Flip Animation',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 180.0,
                  height: 180.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.orange.shade200),
                        ),
                        Text(
                          'Front',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blue.shade400,
                          ),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
